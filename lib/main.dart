import 'package:flutter/material.dart';

void main() => runApp(new GettingStratedApp());

class GettingStratedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "開始",
      home: new Center(
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text("導航列"),
          ),
          body: new Center(
            child: new HomeWidget(),
          ),
        ),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: 20,
        itemBuilder: (context, rowNumber) {
          return new Container(
              padding: new EdgeInsets.all(16.0),
              child: new Column(
                children: <Widget>[
                  new Image.network(
                      "https://yasuoyuhao.me/wp-content/uploads/2018/03/area_web_top@2x.png"),
                  new Text("go to yasuoyuhao.me ,rowIndex: $rowNumber"),
                  new Text(
                    "沒有道路能夠通往真誠,真誠本身就是道路",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  new Divider(
                    color: getDivederColor(rowNumber),
                    indent: 0.0,
                    height: 16.0,
                  )
                ],
              ));
        });
  }

  Color getDivederColor(int number) {
    if (number % 2 == 0) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }
}
