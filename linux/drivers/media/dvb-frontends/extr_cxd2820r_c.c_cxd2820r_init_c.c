
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct dvb_frontend {struct cxd2820r_priv* demodulator_priv; } ;
struct cxd2820r_priv {int * regmap; struct i2c_client** client; } ;


 int dev_dbg (int *,char*,...) ;
 int regmap_write (int ,int,int) ;

int cxd2820r_init_c(struct dvb_frontend *fe)
{
 struct cxd2820r_priv *priv = fe->demodulator_priv;
 struct i2c_client *client = priv->client[0];
 int ret;

 dev_dbg(&client->dev, "\n");

 ret = regmap_write(priv->regmap[0], 0x0085, 0x07);
 if (ret)
  goto error;

 return ret;
error:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
