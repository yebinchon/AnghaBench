
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct dvb_frontend {struct af9033_dev* demodulator_priv; } ;
struct af9033_dev {int regmap; struct i2c_client* client; } ;


 int dev_dbg (int *,char*,int) ;
 int regmap_update_bits (int ,int,int,int) ;

__attribute__((used)) static int af9033_pid_filter_ctrl(struct dvb_frontend *fe, int onoff)
{
 struct af9033_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 int ret;

 dev_dbg(&client->dev, "onoff=%d\n", onoff);

 ret = regmap_update_bits(dev->regmap, 0x80f993, 0x01, onoff);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
