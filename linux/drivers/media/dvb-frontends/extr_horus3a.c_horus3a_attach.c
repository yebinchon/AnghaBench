
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_adapter {int dev; } ;
struct horus3a_priv {int i2c_address; struct i2c_adapter* i2c; int set_tuner; int set_tuner_data; } ;
struct horus3a_config {int i2c_address; int xtal_freq_mhz; int set_tuner_callback; int set_tuner_priv; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {struct horus3a_priv* tuner_priv; TYPE_1__ ops; } ;


 int GFP_KERNEL ;
 int dev_info (int *,char*,int,struct i2c_adapter*) ;
 int dev_warn (int *,char*,int) ;
 int horus3a_enter_power_save (struct horus3a_priv*) ;
 int horus3a_tuner_ops ;
 int horus3a_write_reg (struct horus3a_priv*,int,int) ;
 int horus3a_write_regs (struct horus3a_priv*,int,int*,int) ;
 struct horus3a_priv* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int usleep_range (int,int) ;

struct dvb_frontend *horus3a_attach(struct dvb_frontend *fe,
        const struct horus3a_config *config,
        struct i2c_adapter *i2c)
{
 u8 buf[3], val;
 struct horus3a_priv *priv = ((void*)0);

 priv = kzalloc(sizeof(struct horus3a_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return ((void*)0);
 priv->i2c_address = (config->i2c_address >> 1);
 priv->i2c = i2c;
 priv->set_tuner_data = config->set_tuner_priv;
 priv->set_tuner = config->set_tuner_callback;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);


 usleep_range(4000, 6000);

 horus3a_write_reg(priv, 0x2a, 0x79);

 buf[0] = config->xtal_freq_mhz;
 buf[1] = config->xtal_freq_mhz;
 buf[2] = 0;

 horus3a_write_regs(priv, 0x6, buf, 3);

 horus3a_write_reg(priv, 0x0a, 0x40);
 switch (config->xtal_freq_mhz) {
 case 27:
  val = 0x1f;
  break;
 case 24:
  val = 0x10;
  break;
 case 16:
  val = 0xc;
  break;
 default:
  val = 0;
  dev_warn(&priv->i2c->dev,
   "horus3a: invalid xtal frequency %dMHz\n",
   config->xtal_freq_mhz);
  break;
 }
 val <<= 2;
 horus3a_write_reg(priv, 0x0e, val);
 horus3a_enter_power_save(priv);
 usleep_range(3000, 5000);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 memcpy(&fe->ops.tuner_ops, &horus3a_tuner_ops,
    sizeof(struct dvb_tuner_ops));
 fe->tuner_priv = priv;
 dev_info(&priv->i2c->dev,
  "Sony HORUS3A attached on addr=%x at I2C adapter %p\n",
  priv->i2c_address, priv->i2c);
 return fe;
}
