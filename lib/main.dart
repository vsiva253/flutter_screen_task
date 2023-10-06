import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTab = 0;

  void selectTab(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color(0xFF1C1B20),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: const BoxDecoration(
                  color: Color(0xFF2196F3),
                ),
              ),
            ),
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Container(
              height: 42,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF1C1B20),
              ),
              child: const Center(
                child: Text(
                  "Following",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 35)),
              Center(
                child: Container(
                  width: 180, // Adjust the size of the avatar as needed
                  height: 180,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white, // Background color of the avatar
                  ),
                  child: Center(
                    child: ClipOval(
                      child: Image.asset(
                        'assets/s3.png', // Path to your asset image
                        width: 180, // Adjust the size of the image
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 33),
                  child: Text(
                    'Shane Mathias',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Co founder",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.verified,
                        color: Colors.white70,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 25)),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 217, 211, 211),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/s1.png', // Path to your asset image
                            fit: BoxFit.cover,
                            width: 70,
                            height: 70,
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text(
                        "Snowy",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(left: 20)),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 217, 211, 211),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/s2.png',
                            fit: BoxFit.cover, // Path to your asset image
                            width: 70,
                            height: 70,
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text(
                        "Sandy",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 31)),
              Row(
                children: [
                  const Expanded(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                          child: Column(
                        children: [
                          Text(
                            "2",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5)),
                          Text(
                            "Posts",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          right: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: const Center(
                          child: Column(
                        children: [
                          Text(
                            "1",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5)),
                          Text(
                            "Followers",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                          child: Column(
                        children: [
                          Text(
                            "2",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5)),
                          Text(
                            "Following",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 13)),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        selectTab(0);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: selectedTab == 0
                                    ? Colors.blue
                                    : Colors.transparent,
                                width: 2.0,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Posts",
                              style: TextStyle(
                                color: selectedTab == 0
                                    ? Colors.white
                                    : Colors.white70,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        selectTab(1);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: selectedTab == 1
                                    ? Colors.blue
                                    : Colors.transparent,
                                width: 2.0,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Stamp Book",
                              style: TextStyle(
                                color: selectedTab == 1
                                    ? Colors.white
                                    : Colors.white70,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        selectTab(2);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: selectedTab == 2
                                    ? Colors.blue
                                    : Colors.transparent,
                                width: 2,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Community",
                              style: TextStyle(
                                color: selectedTab == 2
                                    ? Colors.white
                                    : Colors.white70,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 5)),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 15, right: 2.5),
                      height: 180,
                      child: Image.asset(
                        "assets/s1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 2.5, right: 15),
                      height: 180,
                      child: Image.asset(
                        "assets/s2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.17, // Adjust the height here for the belly curve
      size.width,
      size.height * 0.25,
    );
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
