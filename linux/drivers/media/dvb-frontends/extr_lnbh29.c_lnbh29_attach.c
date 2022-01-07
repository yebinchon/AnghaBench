
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lnbh29_priv {int i2c_address; int* config; struct i2c_adapter* i2c; } ;
struct lnbh29_config {int i2c_address; int data_config; } ;
struct i2c_adapter {int dev; } ;
struct TYPE_2__ {scalar_t__ (* set_voltage ) (struct dvb_frontend*,int ) ;int release_sec; } ;
struct dvb_frontend {TYPE_1__ ops; struct lnbh29_priv* sec_priv; } ;


 int GFP_KERNEL ;
 int SEC_VOLTAGE_OFF ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int) ;
 int kfree (struct lnbh29_priv*) ;
 struct lnbh29_priv* kzalloc (int,int ) ;
 int lnbh29_release ;
 scalar_t__ lnbh29_set_voltage (struct dvb_frontend*,int ) ;

struct dvb_frontend *lnbh29_attach(struct dvb_frontend *fe,
       struct lnbh29_config *cfg,
       struct i2c_adapter *i2c)
{
 struct lnbh29_priv *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return ((void*)0);

 priv->i2c_address = (cfg->i2c_address >> 1);
 priv->i2c = i2c;
 priv->config[0] = 0x01;
 priv->config[1] = cfg->data_config;
 fe->sec_priv = priv;

 if (lnbh29_set_voltage(fe, SEC_VOLTAGE_OFF)) {
  dev_err(&i2c->dev, "no LNBH29 found at I2C addr 0x%02x\n",
   priv->i2c_address);
  kfree(priv);
  fe->sec_priv = ((void*)0);
  return ((void*)0);
 }

 fe->ops.release_sec = lnbh29_release;
 fe->ops.set_voltage = lnbh29_set_voltage;

 dev_info(&i2c->dev, "LNBH29 attached at I2C addr 0x%02x\n",
   priv->i2c_address);

 return fe;
}
