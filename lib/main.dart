import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() => runApp(MyApp());




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar( backgroundColor: Colors.blue.shade900, title: Text("Ask Me Anything"),),
        body: Ball(),
      )
    );

  }
}



class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar( backgroundColor: Colors.blue.shade900, title: Text("Ask Me Anything"),),
      body: Container(),
    );
  }
}


class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int lucky_number = 1;

  void whatToDo(){
    Random rdm = new Random();
    lucky_number = 1 + rdm.nextInt(5);
    setState(() {
      lucky_number = lucky_number;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(

      //mainAxisSize: MainAxisSize.min, //as per child widget
      //verticalDirection: VerticalDirection.up, //1,2,3 or 3,2,1
      mainAxisAlignment: MainAxisAlignment.center, //place at top(start), botton(end), center (if not min in MainAxisSize)
      //mainAxisAlignment: MainAxisAlignment.spaceBetween, //stretch (spaceEvenly, spaceBetween
      //crossAxisAlignment: CrossAxisAlignment.stretch, //like above in horizontel way


      children: <Widget>[
        Expanded(
          child: FlatButton(onPressed: (){whatToDo();print("lucky Number is ${lucky_number}");},child: Image.asset("images/ball${lucky_number}.png"))
        )

      ],
    );
  }
}

