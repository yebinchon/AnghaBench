
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_val_mask {int member_0; int member_1; int member_2; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct cxd2820r_priv* demodulator_priv; } ;
struct cxd2820r_priv {int delivery_system; struct i2c_client** client; } ;


 int ARRAY_SIZE (struct reg_val_mask*) ;
 int SYS_UNDEFINED ;
 int cxd2820r_wr_reg_val_mask_tab (struct cxd2820r_priv*,struct reg_val_mask*,int ) ;
 int dev_dbg (int *,char*,...) ;

int cxd2820r_sleep_t2(struct dvb_frontend *fe)
{
 struct cxd2820r_priv *priv = fe->demodulator_priv;
 struct i2c_client *client = priv->client[0];
 int ret;
 struct reg_val_mask tab[] = {
  { 0x000ff, 0x1f, 0xff },
  { 0x00085, 0x00, 0xff },
  { 0x00088, 0x01, 0xff },
  { 0x02069, 0x00, 0xff },
  { 0x00081, 0x00, 0xff },
  { 0x00080, 0x00, 0xff },
 };

 dev_dbg(&client->dev, "\n");

 ret = cxd2820r_wr_reg_val_mask_tab(priv, tab, ARRAY_SIZE(tab));
 if (ret)
  goto error;

 priv->delivery_system = SYS_UNDEFINED;

 return ret;
error:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
