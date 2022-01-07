
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mn88473_dev {int active; int * regmap; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct i2c_client* demodulator_priv; } ;


 int dev_dbg (int *,char*,...) ;
 struct mn88473_dev* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static int mn88473_sleep(struct dvb_frontend *fe)
{
 struct i2c_client *client = fe->demodulator_priv;
 struct mn88473_dev *dev = i2c_get_clientdata(client);
 int ret;

 dev_dbg(&client->dev, "\n");

 dev->active = 0;

 ret = regmap_write(dev->regmap[2], 0x05, 0x3e);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
