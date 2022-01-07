
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zforce_ts {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int COMMAND_DEACTIVATE ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 int zforce_command_wait (struct zforce_ts*,int ) ;

__attribute__((used)) static int zforce_stop(struct zforce_ts *ts)
{
 struct i2c_client *client = ts->client;
 int ret;

 dev_dbg(&client->dev, "stopping device\n");


 ret = zforce_command_wait(ts, COMMAND_DEACTIVATE);
 if (ret != 0) {
  dev_err(&client->dev, "could not deactivate device, %d\n",
   ret);
  return ret;
 }

 return 0;
}
