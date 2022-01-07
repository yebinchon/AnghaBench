
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_adapter {int dev; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {struct ascot2e_priv* tuner_priv; TYPE_1__ ops; } ;
struct ascot2e_priv {int i2c_address; struct i2c_adapter* i2c; int state; int set_tuner; int set_tuner_data; } ;
struct ascot2e_config {int i2c_address; int set_tuner_callback; int set_tuner_priv; } ;


 int GFP_KERNEL ;
 int STATE_SLEEP ;
 int ascot2e_tuner_ops ;
 int ascot2e_write_reg (struct ascot2e_priv*,int,int) ;
 int ascot2e_write_regs (struct ascot2e_priv*,int,int*,int) ;
 int dev_info (int *,char*,int,struct i2c_adapter*) ;
 struct ascot2e_priv* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int msleep (int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

struct dvb_frontend *ascot2e_attach(struct dvb_frontend *fe,
        const struct ascot2e_config *config,
        struct i2c_adapter *i2c)
{
 u8 data[4];
 struct ascot2e_priv *priv = ((void*)0);

 priv = kzalloc(sizeof(struct ascot2e_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return ((void*)0);
 priv->i2c_address = (config->i2c_address >> 1);
 priv->i2c = i2c;
 priv->set_tuner_data = config->set_tuner_priv;
 priv->set_tuner = config->set_tuner_callback;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);


 data[0] = 16;

 data[1] = 0x06;

 data[2] = 0xC4;
 data[3] = 0x40;
 ascot2e_write_regs(priv, 0x01, data, 4);

 data[0] = 0x10;
 data[1] = 0x3F;
 data[2] = 0x25;
 ascot2e_write_regs(priv, 0x22, data, 3);

 ascot2e_write_reg(priv, 0x28, 0x1e);

 ascot2e_write_reg(priv, 0x59, 0x04);

 msleep(80);

 ascot2e_write_reg(priv, 0x4c, 0x01);

 ascot2e_write_reg(priv, 0x07, 0x04);

 ascot2e_write_reg(priv, 0x04, 0x00);

 ascot2e_write_reg(priv, 0x03, 0xc0);

 data[0] = 0x00;
 data[1] = 0x04;
 ascot2e_write_regs(priv, 0x14, data, 2);
 ascot2e_write_reg(priv, 0x50, 0x01);
 priv->state = STATE_SLEEP;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 memcpy(&fe->ops.tuner_ops, &ascot2e_tuner_ops,
    sizeof(struct dvb_tuner_ops));
 fe->tuner_priv = priv;
 dev_info(&priv->i2c->dev,
  "Sony ASCOT2E attached on addr=%x at I2C adapter %p\n",
  priv->i2c_address, priv->i2c);
 return fe;
}
