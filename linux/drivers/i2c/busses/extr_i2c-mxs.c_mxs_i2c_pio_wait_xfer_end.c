
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_i2c_dev {scalar_t__ regs; } ;


 int ENXIO ;
 int ETIMEDOUT ;
 scalar_t__ MXS_I2C_CTRL0 ;
 int MXS_I2C_CTRL0_RUN ;
 scalar_t__ MXS_I2C_CTRL1 ;
 int MXS_I2C_CTRL1_NO_SLAVE_ACK_IRQ ;
 int cond_resched () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int mxs_i2c_pio_wait_xfer_end(struct mxs_i2c_dev *i2c)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(1000);

 while (readl(i2c->regs + MXS_I2C_CTRL0) & MXS_I2C_CTRL0_RUN) {
  if (readl(i2c->regs + MXS_I2C_CTRL1) &
    MXS_I2C_CTRL1_NO_SLAVE_ACK_IRQ)
   return -ENXIO;
  if (time_after(jiffies, timeout))
   return -ETIMEDOUT;
  cond_resched();
 }

 return 0;
}
