
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zforce_ts {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (char*) ;
 int COMMAND_SETCONFIG ;
 int FRAME_START ;
 int dev_dbg (int *,char*,char) ;
 int zforce_send_wait (struct zforce_ts*,char*,int ) ;

__attribute__((used)) static int zforce_setconfig(struct zforce_ts *ts, char b1)
{
 struct i2c_client *client = ts->client;
 char buf[7] = { FRAME_START, 5, COMMAND_SETCONFIG,
   b1, 0, 0, 0 };

 dev_dbg(&client->dev, "set config to (%d)\n", b1);

 return zforce_send_wait(ts, &buf[0], ARRAY_SIZE(buf));
}
