
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlr_i2c_private {struct i2c_msg* msg; int clk; int iobase; scalar_t__ irq; } ;
struct i2c_msg {int flags; int addr; int * buf; int len; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_M_RD ;
 int XLR_I2C_INT_EN ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct xlr_i2c_private* i2c_get_adapdata (struct i2c_adapter*) ;
 int xlr_i2c_rx (struct xlr_i2c_private*,int ,int *,int ) ;
 int xlr_i2c_tx (struct xlr_i2c_private*,int ,int *,int ) ;
 int xlr_i2c_wreg (int ,int ,int) ;

__attribute__((used)) static int xlr_i2c_xfer(struct i2c_adapter *adap,
 struct i2c_msg *msgs, int num)
{
 struct i2c_msg *msg;
 int i;
 int ret = 0;
 struct xlr_i2c_private *priv = i2c_get_adapdata(adap);

 ret = clk_enable(priv->clk);
 if (ret)
  return ret;

 if (priv->irq)
  xlr_i2c_wreg(priv->iobase, XLR_I2C_INT_EN, 0xf);


 for (i = 0; ret == 0 && i < num; i++) {
  msg = &msgs[i];
  priv->msg = msg;
  if (msg->flags & I2C_M_RD)
   ret = xlr_i2c_rx(priv, msg->len, &msg->buf[0],
     msg->addr);
  else
   ret = xlr_i2c_tx(priv, msg->len, &msg->buf[0],
     msg->addr);
 }

 if (priv->irq)
  xlr_i2c_wreg(priv->iobase, XLR_I2C_INT_EN, 0);

 clk_disable(priv->clk);
 priv->msg = ((void*)0);

 return (ret != 0) ? ret : num;
}
