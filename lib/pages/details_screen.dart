import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  final double progress = 0.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_outlined),
        title: Container(
            alignment: Alignment.center,
            child: Text(
              "Report",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.more_horiz,
                size: 35,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 300,
            width: 400,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black,
                  Colors.black87,
                ]),
                borderRadius: BorderRadius.circular(15)),
            child: SafeArea(
              child: Container(
                margin: EdgeInsets.only(left: 25, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Outflow",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "-\$70.99",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.orange),
                        ),
                        ImageIcon(
                          AssetImage("lib/images/arrow-right.png"),
                          color: Colors.white,
                          size: 35,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    height: 160,
                                    width: 160,
                                    child: CircularProgressIndicator(
                                      value: progress,
                                      strokeWidth: 25,
                                      backgroundColor: Colors.orange,
                                      valueColor: AlwaysStoppedAnimation(
                                          Colors.blueAccent),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Balance",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "\$879",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 31),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          // SizedBox(height: 40,width: 40,),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 25),
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Inflow",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "\$950.99",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.blueAccent),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "History",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 20),
                ),
                Row(
                  children: [
                    Text("This month",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 13)),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 25,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 350,
            width: 400,
            child: ListView(
              children: [
                Container(
                  child: Column(
                    children: [
                      buildExpense(context, Icons.article_outlined,
                          "Adobe Illustrator", "21 jan,2023", "-\$23.99"),
                      buildExpense(context, Icons.shopping_cart,
                          "Transfer From Claude", "09 jan,2023", "+\$950.99"),
                      buildExpense(context, Icons.camera_indoor_outlined,
                          "Netflix Ultra Hd", "09 jan,2023", "-\$16.99"),
                      buildExpense(context, Icons.queue_music,
                          "Spotify Premium", "09 jan,2023", "-\$11.99"),
                      buildExpense(context, Icons.shopping_cart,
                          "Fifa 2022 Ultimate", "09 jan,2023", "-\$23.99"),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  buildExpense(BuildContext context, IconData icon, String title,
      String subtitle, String trailing) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(left: 5, right: 5),
      child: GestureDetector(
        onTap: () {},
        child: Card(
          child: ListTile(
            tileColor: Colors.white,
            leading: Icon(
              icon,
              size: 25,
              color: Colors.deepPurple,
            ),
            title: Text(
              title,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 1),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text(
              trailing,
              style: TextStyle(
                color: Colors.orange,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
