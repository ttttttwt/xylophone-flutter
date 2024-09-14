import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

void playSound(int soundNumber) {
  final player = AudioPlayer();
  player.play(AssetSource('note$soundNumber.wav'));
}

Widget buildKey(int soundNumber, Color color) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        playSound(soundNumber);
      },
      style: TextButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(50, 50),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      child: SizedBox.shrink(),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(1, Colors.red),
            buildKey(2, Colors.orange),
            buildKey(3, Colors.yellow),
            buildKey(4, Colors.green),
            buildKey(5, Colors.teal),
            buildKey(6, Colors.blue),
            buildKey(7, Colors.purple),
          ],
        )),
      ),
    );
  }
}
