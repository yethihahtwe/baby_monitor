import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: Column(children: [
        Text('Signed in as'),
        const SizedBox(height: 8),
        Text(user.email!),
        const SizedBox(height: 40),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
          icon: Icon(Icons.arrow_back),
          label: Text('Sign Out'),
          onPressed: () => FirebaseAuth.instance.signOut(),
        )
      ]),
    );
  }
}
