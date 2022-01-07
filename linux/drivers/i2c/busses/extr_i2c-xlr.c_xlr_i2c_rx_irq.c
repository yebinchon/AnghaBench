
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlr_i2c_private {int iobase; int pos; struct i2c_msg* msg; } ;
struct i2c_msg {int * buf; } ;


 int XLR_I2C_DATAIN ;
 int XLR_I2C_RXRDY ;
 int xlr_i2c_rdreg (int ,int ) ;

__attribute__((used)) static void xlr_i2c_rx_irq(struct xlr_i2c_private *priv, u32 status)
{
 struct i2c_msg *msg = priv->msg;

 if (status & XLR_I2C_RXRDY)
  msg->buf[priv->pos++] =
   xlr_i2c_rdreg(priv->iobase, XLR_I2C_DATAIN);
}
