
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_adapter {int dev; } ;
struct helene_priv {int i2c_address; struct i2c_adapter* i2c; int xtal; int set_tuner; int set_tuner_data; } ;
struct helene_config {int i2c_address; int xtal; int set_tuner_callback; int set_tuner_priv; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {struct helene_priv* tuner_priv; TYPE_1__ ops; } ;


 int GFP_KERNEL ;
 int dev_info (int *,char*,int,struct i2c_adapter*) ;
 int helene_tuner_ops_s ;
 scalar_t__ helene_x_pon (struct helene_priv*) ;
 int kfree (struct helene_priv*) ;
 struct helene_priv* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

struct dvb_frontend *helene_attach_s(struct dvb_frontend *fe,
  const struct helene_config *config,
  struct i2c_adapter *i2c)
{
 struct helene_priv *priv = ((void*)0);

 priv = kzalloc(sizeof(struct helene_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return ((void*)0);
 priv->i2c_address = (config->i2c_address >> 1);
 priv->i2c = i2c;
 priv->set_tuner_data = config->set_tuner_priv;
 priv->set_tuner = config->set_tuner_callback;
 priv->xtal = config->xtal;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 if (helene_x_pon(priv) != 0) {
  kfree(priv);
  return ((void*)0);
 }

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 memcpy(&fe->ops.tuner_ops, &helene_tuner_ops_s,
   sizeof(struct dvb_tuner_ops));
 fe->tuner_priv = priv;
 dev_info(&priv->i2c->dev,
   "Sony HELENE Sat attached on addr=%x at I2C adapter %p\n",
   priv->i2c_address, priv->i2c);
 return fe;
}
