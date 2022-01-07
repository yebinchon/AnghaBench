
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct device {struct helene_config* platform_data; } ;
struct i2c_client {int adapter; int addr; struct device dev; } ;
struct helene_priv {int i2c; int i2c_address; int xtal; int set_tuner; int set_tuner_data; } ;
struct helene_config {int xtal; int set_tuner_callback; int set_tuner_priv; struct dvb_frontend* fe; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {struct helene_priv* tuner_priv; TYPE_1__ ops; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (struct device*,char*,int ,int ) ;
 struct helene_priv* devm_kzalloc (struct device*,int,int ) ;
 int helene_tuner_ops ;
 scalar_t__ helene_x_pon (struct helene_priv*) ;
 int i2c_set_clientdata (struct i2c_client*,struct helene_priv*) ;
 int memcpy (int *,int *,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int helene_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct helene_config *config = client->dev.platform_data;
 struct dvb_frontend *fe = config->fe;
 struct device *dev = &client->dev;
 struct helene_priv *priv;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->i2c_address = client->addr;
 priv->i2c = client->adapter;
 priv->set_tuner_data = config->set_tuner_priv;
 priv->set_tuner = config->set_tuner_callback;
 priv->xtal = config->xtal;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 if (helene_x_pon(priv) != 0)
  return -EINVAL;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 memcpy(&fe->ops.tuner_ops, &helene_tuner_ops,
        sizeof(struct dvb_tuner_ops));
 fe->tuner_priv = priv;
 i2c_set_clientdata(client, priv);

 dev_info(dev, "Sony HELENE attached on addr=%x at I2C adapter %p\n",
   priv->i2c_address, priv->i2c);

 return 0;
}
