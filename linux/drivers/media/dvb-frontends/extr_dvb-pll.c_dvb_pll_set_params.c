
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct dvb_pll_priv {int frequency; int bandwidth; int * i2c; int pll_i2c_address; } ;
struct TYPE_2__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dtv_frontend_properties {int bandwidth_hz; int frequency; } ;
struct dvb_frontend {TYPE_1__ ops; struct dvb_pll_priv* tuner_priv; struct dtv_frontend_properties dtv_property_cache; } ;
typedef int buf ;


 int EINVAL ;
 int dvb_pll_configure (struct dvb_frontend*,int *,int ) ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int dvb_pll_set_params(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct dvb_pll_priv *priv = fe->tuner_priv;
 u8 buf[4];
 struct i2c_msg msg =
  { .addr = priv->pll_i2c_address, .flags = 0,
    .buf = buf, .len = sizeof(buf) };
 int result;
 u32 frequency = 0;

 if (priv->i2c == ((void*)0))
  return -EINVAL;

 result = dvb_pll_configure(fe, buf, c->frequency);
 if (result < 0)
  return result;
 else
  frequency = result;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if ((result = i2c_transfer(priv->i2c, &msg, 1)) != 1) {
  return result;
 }

 priv->frequency = frequency;
 priv->bandwidth = c->bandwidth_hz;

 return 0;
}
