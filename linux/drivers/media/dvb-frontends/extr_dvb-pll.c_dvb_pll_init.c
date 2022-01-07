
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_msg {int len; int * buf; int addr; int flags; } ;
struct dvb_pll_priv {int * i2c; TYPE_1__* pll_desc; int pll_i2c_address; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_2__ ops; struct dvb_pll_priv* tuner_priv; } ;
struct TYPE_3__ {int * initdata2; int * initdata; } ;


 int EINVAL ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int dvb_pll_init(struct dvb_frontend *fe)
{
 struct dvb_pll_priv *priv = fe->tuner_priv;

 if (priv->i2c == ((void*)0))
  return -EINVAL;

 if (priv->pll_desc->initdata) {
  struct i2c_msg msg = { .flags = 0,
   .addr = priv->pll_i2c_address,
   .buf = priv->pll_desc->initdata + 1,
   .len = priv->pll_desc->initdata[0] };

  int result;
  if (fe->ops.i2c_gate_ctrl)
   fe->ops.i2c_gate_ctrl(fe, 1);
  result = i2c_transfer(priv->i2c, &msg, 1);
  if (result != 1)
   return result;
  if (priv->pll_desc->initdata2) {
   msg.buf = priv->pll_desc->initdata2 + 1;
   msg.len = priv->pll_desc->initdata2[0];
   if (fe->ops.i2c_gate_ctrl)
    fe->ops.i2c_gate_ctrl(fe, 1);
   result = i2c_transfer(priv->i2c, &msg, 1);
   if (result != 1)
    return result;
  }
  return 0;
 }

 return -EINVAL;
}
