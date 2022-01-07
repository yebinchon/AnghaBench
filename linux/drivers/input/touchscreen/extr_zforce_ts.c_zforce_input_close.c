
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zforce_ts {struct i2c_client* client; } ;
struct input_dev {int dummy; } ;
struct i2c_client {int dev; } ;


 int dev_warn (int *,char*) ;
 struct zforce_ts* input_get_drvdata (struct input_dev*) ;
 int zforce_stop (struct zforce_ts*) ;

__attribute__((used)) static void zforce_input_close(struct input_dev *dev)
{
 struct zforce_ts *ts = input_get_drvdata(dev);
 struct i2c_client *client = ts->client;
 int ret;

 ret = zforce_stop(ts);
 if (ret)
  dev_warn(&client->dev, "stopping zforce failed\n");

 return;
}
