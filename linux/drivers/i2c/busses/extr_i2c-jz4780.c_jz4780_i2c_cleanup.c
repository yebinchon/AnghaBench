
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct jz4780_i2c {TYPE_1__ adap; int lock; } ;


 int JZ4780_I2C_CINTR ;
 int JZ4780_I2C_CTRL ;
 unsigned short JZ4780_I2C_CTRL_STPHLD ;
 int JZ4780_I2C_CTXABRT ;
 unsigned short JZ4780_I2C_ENB_I2C ;
 int JZ4780_I2C_INTM ;
 int JZ4780_I2C_INTST ;
 int dev_err (int *,char*) ;
 int jz4780_i2c_disable (struct jz4780_i2c*) ;
 unsigned short jz4780_i2c_readw (struct jz4780_i2c*,int ) ;
 int jz4780_i2c_writew (struct jz4780_i2c*,int ,unsigned short) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 scalar_t__ unlikely (unsigned short) ;

__attribute__((used)) static int jz4780_i2c_cleanup(struct jz4780_i2c *i2c)
{
 int ret;
 unsigned long flags;
 unsigned short tmp;

 spin_lock_irqsave(&i2c->lock, flags);


 tmp = jz4780_i2c_readw(i2c, JZ4780_I2C_CTRL);
 tmp &= ~JZ4780_I2C_CTRL_STPHLD;
 jz4780_i2c_writew(i2c, JZ4780_I2C_CTRL, tmp);


 jz4780_i2c_writew(i2c, JZ4780_I2C_INTM, 0);


 jz4780_i2c_readw(i2c, JZ4780_I2C_CTXABRT);
 jz4780_i2c_readw(i2c, JZ4780_I2C_CINTR);


 tmp = jz4780_i2c_readw(i2c, JZ4780_I2C_CTRL);
 tmp &= ~JZ4780_I2C_ENB_I2C;
 jz4780_i2c_writew(i2c, JZ4780_I2C_CTRL, tmp);
 udelay(10);
 tmp |= JZ4780_I2C_ENB_I2C;
 jz4780_i2c_writew(i2c, JZ4780_I2C_CTRL, tmp);

 spin_unlock_irqrestore(&i2c->lock, flags);

 ret = jz4780_i2c_disable(i2c);
 if (ret)
  dev_err(&i2c->adap.dev,
   "unable to disable device during cleanup!\n");

 if (unlikely(jz4780_i2c_readw(i2c, JZ4780_I2C_INTM)
       & jz4780_i2c_readw(i2c, JZ4780_I2C_INTST)))
  dev_err(&i2c->adap.dev,
   "device has interrupts after a complete cleanup!\n");

 return ret;
}
