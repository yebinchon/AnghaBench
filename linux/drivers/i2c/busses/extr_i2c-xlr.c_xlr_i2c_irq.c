
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlr_i2c_private {scalar_t__ pos; int wait; int iobase; struct i2c_msg* msg; } ;
struct i2c_msg {scalar_t__ len; int flags; } ;
typedef int irqreturn_t ;


 int I2C_M_RD ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int XLR_I2C_INT_STAT ;
 int XLR_I2C_STATUS ;
 int wake_up (int *) ;
 int xlr_i2c_busy (struct xlr_i2c_private*,int ) ;
 int xlr_i2c_rdreg (int ,int ) ;
 int xlr_i2c_rx_irq (struct xlr_i2c_private*,int ) ;
 int xlr_i2c_tx_irq (struct xlr_i2c_private*,int ) ;
 int xlr_i2c_wreg (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t xlr_i2c_irq(int irq, void *dev_id)
{
 struct xlr_i2c_private *priv = dev_id;
 struct i2c_msg *msg = priv->msg;
 u32 int_stat, status;

 int_stat = xlr_i2c_rdreg(priv->iobase, XLR_I2C_INT_STAT);
 if (!int_stat)
  return IRQ_NONE;

 xlr_i2c_wreg(priv->iobase, XLR_I2C_INT_STAT, int_stat);

 if (!msg)
  return IRQ_HANDLED;

 status = xlr_i2c_rdreg(priv->iobase, XLR_I2C_STATUS);

 if (priv->pos < msg->len) {
  if (msg->flags & I2C_M_RD)
   xlr_i2c_rx_irq(priv, status);
  else
   xlr_i2c_tx_irq(priv, status);
 }

 if (!xlr_i2c_busy(priv, status))
  wake_up(&priv->wait);

 return IRQ_HANDLED;
}
