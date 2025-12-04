import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(home: BallPage(), debugShowCheckedModeBanner: false),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Ask Me Anything',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1; // Default state

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(8) + 1;
          });
        },
        child: Image.asset('assets/images/magic-ball-$ballNumber.png'),
      ),
    );
  }
}
