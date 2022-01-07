
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct dvb_frontend {struct af9033_dev* demodulator_priv; } ;
struct af9033_dev {int regmap; struct i2c_client* client; } ;


 int dev_dbg (int *,char*,int) ;
 int regmap_update_bits (int ,int,int,int) ;

__attribute__((used)) static int af9033_i2c_gate_ctrl(struct dvb_frontend *fe, int enable)
{
 struct af9033_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 int ret;

 dev_dbg(&client->dev, "enable=%d\n", enable);

 ret = regmap_update_bits(dev->regmap, 0x00fa04, 0x01, enable);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
