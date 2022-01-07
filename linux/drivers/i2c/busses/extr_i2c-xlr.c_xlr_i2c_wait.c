
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlr_i2c_private {int iobase; int wait; } ;


 int EIO ;
 int ETIMEDOUT ;
 int XLR_I2C_ACK_ERR ;
 int XLR_I2C_STATUS ;
 int msecs_to_jiffies (unsigned long) ;
 int wait_event_timeout (int ,int ,int ) ;
 int xlr_i2c_idle (struct xlr_i2c_private*) ;
 int xlr_i2c_rdreg (int ,int ) ;

__attribute__((used)) static int xlr_i2c_wait(struct xlr_i2c_private *priv, unsigned long timeout)
{
 int status;
 int t;

 t = wait_event_timeout(priv->wait, xlr_i2c_idle(priv),
    msecs_to_jiffies(timeout));
 if (!t)
  return -ETIMEDOUT;

 status = xlr_i2c_rdreg(priv->iobase, XLR_I2C_STATUS);

 return status & XLR_I2C_ACK_ERR ? -EIO : 0;
}
