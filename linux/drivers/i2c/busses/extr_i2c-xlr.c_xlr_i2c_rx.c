
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2c_adapter {int dev; } ;
struct xlr_i2c_private {scalar_t__ irq; int iobase; scalar_t__ pos; TYPE_1__* cfg; struct i2c_adapter adap; } ;
struct TYPE_2__ {int cfg_extra; } ;


 int EIO ;
 int ETIMEDOUT ;
 int XLR_I2C_ACK_ERR ;
 int XLR_I2C_ARB_STARTERR ;
 int XLR_I2C_BYTECNT ;
 int XLR_I2C_CFG ;
 int XLR_I2C_CFG_NOADDR ;
 int XLR_I2C_DATAIN ;
 int XLR_I2C_DEVADDR ;
 int XLR_I2C_RXRDY ;
 int XLR_I2C_STARTXFR ;
 int XLR_I2C_STARTXFR_RD ;
 int XLR_I2C_STATUS ;
 int XLR_I2C_TIMEOUT ;
 int dev_err (int *,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int time_after (unsigned long,unsigned long) ;
 int xlr_i2c_busy (struct xlr_i2c_private*,int) ;
 void* xlr_i2c_rdreg (int ,int ) ;
 int xlr_i2c_wait (struct xlr_i2c_private*,int) ;
 int xlr_i2c_wreg (int ,int ,int) ;

__attribute__((used)) static int xlr_i2c_rx(struct xlr_i2c_private *priv, u16 len, u8 *buf, u16 addr)
{
 struct i2c_adapter *adap = &priv->adap;
 u32 i2c_status;
 unsigned long timeout, stoptime, checktime;
 int nbytes, timedout;

 xlr_i2c_wreg(priv->iobase, XLR_I2C_CFG,
   XLR_I2C_CFG_NOADDR | priv->cfg->cfg_extra);
 xlr_i2c_wreg(priv->iobase, XLR_I2C_BYTECNT, len - 1);
 xlr_i2c_wreg(priv->iobase, XLR_I2C_DEVADDR, addr);

 priv->pos = 0;

 timeout = msecs_to_jiffies(XLR_I2C_TIMEOUT);
 stoptime = jiffies + timeout;
 timedout = 0;
 nbytes = 0;
retry:
 xlr_i2c_wreg(priv->iobase, XLR_I2C_STARTXFR, XLR_I2C_STARTXFR_RD);

 if (priv->irq > 0)
  return xlr_i2c_wait(priv, XLR_I2C_TIMEOUT * len);

 while (!timedout) {
  checktime = jiffies;
  i2c_status = xlr_i2c_rdreg(priv->iobase, XLR_I2C_STATUS);
  if (i2c_status & XLR_I2C_RXRDY) {
   if (nbytes >= len)
    return -EIO;

   buf[nbytes++] =
    xlr_i2c_rdreg(priv->iobase, XLR_I2C_DATAIN);


   stoptime = jiffies + timeout;
  }

  timedout = time_after(checktime, stoptime);
  if (i2c_status & XLR_I2C_ARB_STARTERR) {
   if (timedout)
    break;
   goto retry;
  }

  if (i2c_status & XLR_I2C_ACK_ERR)
   return -EIO;

  if (!xlr_i2c_busy(priv, i2c_status))
   return 0;
 }

 dev_err(&adap->dev, "I2C receive timeout\n");
 return -ETIMEDOUT;
}
