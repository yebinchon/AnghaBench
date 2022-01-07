
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zforce_ts {int command_waiting; int command_result; int command_done; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int complete (int *) ;
 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static void zforce_complete(struct zforce_ts *ts, int cmd, int result)
{
 struct i2c_client *client = ts->client;

 if (ts->command_waiting == cmd) {
  dev_dbg(&client->dev, "completing command 0x%x\n", cmd);
  ts->command_result = result;
  complete(&ts->command_done);
 } else {
  dev_dbg(&client->dev, "command %d not for us\n", cmd);
 }
}
