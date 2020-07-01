import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color keyColor, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyColor: Colors.red, soundNumber: 1),
              buildKey(keyColor: Colors.orange, soundNumber: 2),
              buildKey(keyColor: Colors.yellow, soundNumber: 3),
              buildKey(keyColor: Colors.green, soundNumber: 4),
              buildKey(keyColor: Colors.blue, soundNumber: 5),
              buildKey(keyColor: Colors.indigo, soundNumber: 6),
              buildKey(keyColor: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
