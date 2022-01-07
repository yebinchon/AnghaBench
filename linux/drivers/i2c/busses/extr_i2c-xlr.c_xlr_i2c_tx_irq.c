
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlr_i2c_private {int pos; int iobase; struct i2c_msg* msg; } ;
struct i2c_msg {int * buf; } ;


 int XLR_I2C_DATAOUT ;
 int XLR_I2C_SDOEMPTY ;
 int xlr_i2c_wreg (int ,int ,int ) ;

__attribute__((used)) static void xlr_i2c_tx_irq(struct xlr_i2c_private *priv, u32 status)
{
 struct i2c_msg *msg = priv->msg;

 if (status & XLR_I2C_SDOEMPTY)
  xlr_i2c_wreg(priv->iobase, XLR_I2C_DATAOUT,
    msg->buf[priv->pos++]);
}
