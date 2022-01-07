
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zforce_ts {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (char*) ;
 int COMMAND_SCANFREQ ;
 int FRAME_START ;
 int dev_dbg (int *,char*,int,int,int) ;
 int zforce_send_wait (struct zforce_ts*,char*,int ) ;

__attribute__((used)) static int zforce_scan_frequency(struct zforce_ts *ts, u16 idle, u16 finger,
     u16 stylus)
{
 struct i2c_client *client = ts->client;
 char buf[9] = { FRAME_START, 7, COMMAND_SCANFREQ,
   (idle & 0xff), ((idle >> 8) & 0xff),
   (finger & 0xff), ((finger >> 8) & 0xff),
   (stylus & 0xff), ((stylus >> 8) & 0xff) };

 dev_dbg(&client->dev,
  "set scan frequency to (idle: %d, finger: %d, stylus: %d)\n",
  idle, finger, stylus);

 return zforce_send_wait(ts, &buf[0], ARRAY_SIZE(buf));
}
