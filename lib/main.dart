import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  void playSound(int node){
    final player =AudioCache();
    player.play('note$node.wav');
  }

   Expanded buildKey({ Color color , int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: ()
        {
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color:Colors.red , soundNumber:1),
              buildKey(color:Colors.orange , soundNumber:2),
              buildKey(color:Colors.yellowAccent , soundNumber:3),
              buildKey(color:Colors.green , soundNumber:4),
              buildKey(color:Colors.blue , soundNumber:5),
              buildKey(color:Colors.indigo , soundNumber:6),
              buildKey(color:Colors.purple , soundNumber:7),

            ],
          ),
        ),
      ),
    );
  }
}
