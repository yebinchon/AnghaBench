
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct jz4780_i2c {int stop_hold; int is_write; unsigned char* wbuf; int wt_len; TYPE_1__ adap; int trans_waitq; int lock; } ;


 int EIO ;
 int JZ4780_I2C_CTRL ;
 unsigned short JZ4780_I2C_CTRL_STPHLD ;
 int JZ4780_I2C_INTM ;
 unsigned short JZ4780_I2C_INTM_MTXABT ;
 unsigned short JZ4780_I2C_INTM_MTXEMP ;
 int JZ4780_I2C_STA ;
 unsigned short JZ4780_I2C_STA_MSTACT ;
 unsigned short JZ4780_I2C_STA_TFE ;
 int JZ4780_I2C_TIMEOUT ;
 int JZ4780_I2C_TXABRT ;
 int JZ4780_I2C_TXTL ;
 unsigned short TX_LEVEL ;
 int dev_err (int *,char*) ;
 unsigned short jz4780_i2c_readw (struct jz4780_i2c*,int ) ;
 int jz4780_i2c_txabrt (struct jz4780_i2c*,unsigned short) ;
 int jz4780_i2c_writew (struct jz4780_i2c*,int ,unsigned short) ;
 int msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static inline int jz4780_i2c_xfer_write(struct jz4780_i2c *i2c,
     unsigned char *buf, int len,
     int cnt, int idx)
{
 int ret = 0;
 int wait_time = JZ4780_I2C_TIMEOUT * (len + 5);
 long timeout;
 unsigned short tmp;
 unsigned long flags;

 spin_lock_irqsave(&i2c->lock, flags);

 if (idx < (cnt - 1))
  i2c->stop_hold = 1;
 else
  i2c->stop_hold = 0;

 i2c->is_write = 1;
 i2c->wbuf = buf;
 i2c->wt_len = len;

 jz4780_i2c_writew(i2c, JZ4780_I2C_TXTL, TX_LEVEL);

 jz4780_i2c_writew(i2c, JZ4780_I2C_INTM, JZ4780_I2C_INTM_MTXEMP
     | JZ4780_I2C_INTM_MTXABT);

 tmp = jz4780_i2c_readw(i2c, JZ4780_I2C_CTRL);
 tmp |= JZ4780_I2C_CTRL_STPHLD;
 jz4780_i2c_writew(i2c, JZ4780_I2C_CTRL, tmp);

 spin_unlock_irqrestore(&i2c->lock, flags);

 timeout = wait_for_completion_timeout(&i2c->trans_waitq,
           msecs_to_jiffies(wait_time));
 if (timeout && !i2c->stop_hold) {
  unsigned short i2c_sta;
  int write_in_process;

  timeout = JZ4780_I2C_TIMEOUT * 100;
  for (; timeout > 0; timeout--) {
   i2c_sta = jz4780_i2c_readw(i2c, JZ4780_I2C_STA);

   write_in_process = (i2c_sta & JZ4780_I2C_STA_MSTACT) ||
    !(i2c_sta & JZ4780_I2C_STA_TFE);
   if (!write_in_process)
    break;
   udelay(10);
  }
 }

 if (!timeout) {
  dev_err(&i2c->adap.dev, "write wait timeout\n");
  ret = -EIO;
 }

 tmp = jz4780_i2c_readw(i2c, JZ4780_I2C_TXABRT);
 if (tmp) {
  jz4780_i2c_txabrt(i2c, tmp);
  ret = -EIO;
 }

 return ret;
}
