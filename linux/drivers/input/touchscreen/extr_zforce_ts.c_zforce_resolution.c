
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zforce_ts {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (char*) ;
 int COMMAND_RESOLUTION ;
 int FRAME_START ;
 int dev_dbg (int *,char*,int,int) ;
 int zforce_send_wait (struct zforce_ts*,char*,int ) ;

__attribute__((used)) static int zforce_resolution(struct zforce_ts *ts, u16 x, u16 y)
{
 struct i2c_client *client = ts->client;
 char buf[7] = { FRAME_START, 5, COMMAND_RESOLUTION,
   (x & 0xff), ((x >> 8) & 0xff),
   (y & 0xff), ((y >> 8) & 0xff) };

 dev_dbg(&client->dev, "set resolution to (%d,%d)\n", x, y);

 return zforce_send_wait(ts, &buf[0], ARRAY_SIZE(buf));
}
