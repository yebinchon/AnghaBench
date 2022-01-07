
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zforce_ts_platdata {int y_max; int x_max; } ;
struct zforce_ts {struct zforce_ts_platdata* pdata; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int COMMAND_DATAREQUEST ;
 int COMMAND_DEACTIVATE ;
 int COMMAND_INITIALIZE ;
 int SETCONFIG_DUALTOUCH ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int msleep (int) ;
 int zforce_command (struct zforce_ts*,int ) ;
 int zforce_command_wait (struct zforce_ts*,int ) ;
 int zforce_resolution (struct zforce_ts*,int ,int ) ;
 int zforce_scan_frequency (struct zforce_ts*,int,int,int) ;
 int zforce_setconfig (struct zforce_ts*,int ) ;

__attribute__((used)) static int zforce_start(struct zforce_ts *ts)
{
 struct i2c_client *client = ts->client;
 const struct zforce_ts_platdata *pdata = ts->pdata;
 int ret;

 dev_dbg(&client->dev, "starting device\n");

 ret = zforce_command_wait(ts, COMMAND_INITIALIZE);
 if (ret) {
  dev_err(&client->dev, "Unable to initialize, %d\n", ret);
  return ret;
 }

 ret = zforce_resolution(ts, pdata->x_max, pdata->y_max);
 if (ret) {
  dev_err(&client->dev, "Unable to set resolution, %d\n", ret);
  goto error;
 }

 ret = zforce_scan_frequency(ts, 10, 50, 50);
 if (ret) {
  dev_err(&client->dev, "Unable to set scan frequency, %d\n",
   ret);
  goto error;
 }

 ret = zforce_setconfig(ts, SETCONFIG_DUALTOUCH);
 if (ret) {
  dev_err(&client->dev, "Unable to set config\n");
  goto error;
 }


 ret = zforce_command(ts, COMMAND_DATAREQUEST);
 if (ret) {
  dev_err(&client->dev, "Unable to request data\n");
  goto error;
 }





 msleep(200);

 return 0;

error:
 zforce_command_wait(ts, COMMAND_DEACTIVATE);
 return ret;
}
