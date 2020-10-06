import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask me anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: BallPage()
        ),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();

}

class _BallState extends State<Ball> {
  @override
  int ballNum = 1;

  void shakeBall () {
    ballNum = Random().nextInt(4) + 1;
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded (
            child: FlatButton(
              onPressed: () {
                setState(() {
                  shakeBall();
                });
              },
              child: Image.asset('images/ball$ballNum.png'),
            )
          )
        ],

      )
    );
  }
}
