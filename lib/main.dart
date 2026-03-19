import 'package:flutter/material.dart';


void main(){
  runApp(
    new MaterialApp(
      home: hal1(),
    ),
  );
}


class hal1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "WELCOME TO E-BANK MOBILE",
              style: TextStyle(
                color: Colors.blue,


              ),
            ),
            SizedBox(height: 400,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 7,
                )
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => hal2(),
                  ),

                );
                //aksi selanjutnya

              },
              child: Text("lanjut",
              style: TextStyle(
                color: Colors.black,
                
              )
              ),
            ),

          ]
        )
      )

    );
  }
}


class hal2 extends StatelessWidget {
   final String AUTHOR = "vyn npm 2024 122 0025 ";
   final String AUTHOR2 = "kholilur rohman npm 2024 122 0059";

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.black,

        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    """dev by:
                    

                   ${AUTHOR}
                   ${AUTHOR2}


                   """,
                    style: TextStyle(
                      color: Colors.blue,



                    ),
                  ),
                  SizedBox(height: 400),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                        horizontal: 60,
                        vertical: 7,
                      )
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => hal3(),
                        ),
                      );


                    },
                    child: Text("lanjut",
                      style: TextStyle(
                      color: Colors.black,
                      ),
                  ),


                  ),
                ]
            )
        )

    );

  }
}


class hal3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 7,
                ),
              ),

              child: Text(
                "WELCOME",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => homevip(),
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}



//hasil gpt
class homevip extends StatelessWidget {

  final String nama = "NASABAH VIP";
  final String norek = "868676765454543434";
  final String status = "VIP MEMBER";
  final String saldo = "Rp 12.500.000.000.000.00";
  final String cabang = "BRI SURABAYA";
  final String tipe = "TABUNGAN BISNIS";
  final String tanggal = "16 MARET 2026";

  Widget cyberBox(String title,String value,Color color){
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: color,width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 12,
            ),
          ),

          SizedBox(height:6),

          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

        ],
      ),
    );
  }

  Widget cryptoDetail(
      String name,
      String symbol,
      String balance,
      String price,
      String change,
      String marketcap,
      String supply,
      String volume,
      String rank,
      String ath,
      String network
      ){

    return Container(

      width: double.infinity,
      margin: EdgeInsets.only(bottom:15),
      padding: EdgeInsets.all(16),

      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.cyan,width:2),
          boxShadow: [
            BoxShadow(
                color: Colors.cyan.withOpacity(0.3),
                blurRadius: 8
            )
          ]
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "$name ($symbol)",
            style: TextStyle(
              color: Colors.cyan,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height:10),
          Divider(color: Colors.cyan),
          SizedBox(height:10),

          Text("Balance            : $balance",style: TextStyle(color:Colors.white)),
          Text("Current Price      : $price",style: TextStyle(color:Colors.white)),
          Text("24H Change         : $change",style: TextStyle(color:Colors.greenAccent)),
          Text("Market Cap         : $marketcap",style: TextStyle(color:Colors.white)),
          Text("Circulating Supply : $supply",style: TextStyle(color:Colors.white)),
          Text("24H Volume         : $volume",style: TextStyle(color:Colors.white)),
          Text("Market Rank        : $rank",style: TextStyle(color:Colors.orange)),
          Text("All Time High      : $ath",style: TextStyle(color:Colors.purpleAccent)),
          Text("Blockchain Network : $network",style: TextStyle(color:Colors.cyanAccent)),

          SizedBox(height:10),
          Divider(color: Colors.cyan),
          SizedBox(height:10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("NETWORK STATUS",style: TextStyle(color:Colors.greenAccent)),

              Text(
                "ONLINE",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                ),
              )

            ],
          )

        ],
      ),
    );
  }

  Widget trx(String text){
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom:6),
      decoration: BoxDecoration(
        border: Border.all(color:Colors.greenAccent),
      ),
      child: Text(text,style:TextStyle(color:Colors.greenAccent)),
    );
  }

  Widget menu(String text){
    return Container(
      height:70,
      decoration: BoxDecoration(
        border: Border.all(color:Colors.purple,width:2),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color:Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "M-BANK DASHBOARD",
          style: TextStyle(color:Colors.cyan, fontSize: 19,),
        ),
      ),

      body: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.all(16),

          child: Column(

            children: [

              Text(
                "VIP FINANCIAL DASHBOARD",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 16,
                ),
              ),

              SizedBox(height:20),

              GridView.count(
                shrinkWrap:true,
                physics:NeverScrollableScrollPhysics(),
                crossAxisCount:2,
                crossAxisSpacing:10,
                mainAxisSpacing:10,
                children:[

                  cyberBox("NASABAH",nama,Colors.cyan),
                  cyberBox("NO REK",norek,Colors.cyan),
                  cyberBox("STATUS",status,Colors.green),
                  cyberBox("CABANG",cabang,Colors.green),
                  cyberBox("TIPE",tipe,Colors.purple),
                  cyberBox("TANGGAL",tanggal,Colors.purple),

                ],
              ),

              SizedBox(height:25),

              cyberBox("SALDO UTAMA",saldo,Colors.greenAccent),

              SizedBox(height:30),

              Text(
                "PORTOFOLIO KRIPTO",
                style: TextStyle(color:Colors.cyan,fontSize:18),
              ),

              SizedBox(height:15),

              cryptoDetail("BITCOIN","BTC","0.52 BTC","\$68,200","+3.2%","1.3T","19M","48B","#1","\$73,000","Bitcoin Network"),

              cryptoDetail("ETHEREUM","ETH","4.1 ETH","\$3,200","+1.8%","380B","120M","18B","#2","\$4,800","Ethereum Network"),

              cryptoDetail("BINANCE COIN","BNB","10 BNB","\$540","+2.5%","82B","155M","2B","#4","\$690","BNB Chain"),

              cryptoDetail("SOLANA","SOL","30 SOL","\$170","+4.1%","70B","440M","3B","#5","\$260","Solana Network"),

              cryptoDetail("CARDANO","ADA","1200 ADA","\$0.48","+1.2%","17B","35B","900M","#8","\$3.10","Cardano Blockchain"),

              cryptoDetail("DOGECOIN","DOGE","15000 DOGE","\$0.12","+5.2%","15B","143B","1.1B","#10","\$0.74","Dogecoin Network"),

              cryptoDetail("POLKADOT","DOT","240 DOT","\$7.8","+2.0%","10B","1.4B","320M","#11","\$55","Polkadot Relay"),

              cryptoDetail("AVALANCHE","AVAX","95 AVAX","\$35","+3.0%","14B","430M","450M","#12","\$146","Avalanche Network"),

              cryptoDetail("CHAINLINK","LINK","320 LINK","\$19","+2.1%","11B","556M","600M","#13","\$52","Chainlink Oracle"),

              cryptoDetail("POLYGON","MATIC","2100 MATIC","\$0.9","+1.6%","9B","10B","350M","#15","\$2.92","Polygon Network"),

              SizedBox(height:25),

              Text("MENU TRANSAKSI",style:TextStyle(color:Colors.cyan)),

              SizedBox(height:10),

              GridView.count(
                shrinkWrap:true,
                physics:NeverScrollableScrollPhysics(),
                crossAxisCount:2,
                crossAxisSpacing:10,
                mainAxisSpacing:10,
                children:[

                  menu("TRANSFER"),
                  menu("TOPUP"),
                  menu("PAYMENT"),
                  menu("QR PAY"),
                  menu("BELI PULSA"),
                  menu("PAKET DATA"),
                  menu("LISTRIK"),
                  menu("AIR"),

                ],
              ),

              SizedBox(height:25),

              Text("AKTIVITAS TERAKHIR",style:TextStyle(color:Colors.cyan)),

              SizedBox(height:10),

              trx("Transfer keluar Rp500.000"),
              trx("Topup wallet Rp200.000"),
              trx("Pembayaran listrik Rp350.000"),
              trx("Transfer masuk Rp2.000.000"),

              SizedBox(height:30),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color:Colors.red,width:2),
                ),
                child: TextButton(
                  onPressed:(){
                    Navigator.pop(context);
                  },
                  child: Text(
                    "LOGOUT",
                    style: TextStyle(color:Colors.red),
                  ),
                ),
              ),

              SizedBox(height:40),

            ],
          ),
        ),
      ),
    );
  }
}

