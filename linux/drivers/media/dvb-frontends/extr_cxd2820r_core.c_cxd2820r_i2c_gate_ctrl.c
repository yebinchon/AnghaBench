
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct dvb_frontend {struct cxd2820r_priv* demodulator_priv; } ;
struct cxd2820r_priv {int * regmap; struct i2c_client** client; } ;


 int dev_dbg_ratelimited (int *,char*,int) ;
 int regmap_update_bits (int ,int,int,int) ;

__attribute__((used)) static int cxd2820r_i2c_gate_ctrl(struct dvb_frontend *fe, int enable)
{
 struct cxd2820r_priv *priv = fe->demodulator_priv;
 struct i2c_client *client = priv->client[0];

 dev_dbg_ratelimited(&client->dev, "enable=%d\n", enable);

 return regmap_update_bits(priv->regmap[0], 0x00db, 0x01, enable ? 1 : 0);
}
