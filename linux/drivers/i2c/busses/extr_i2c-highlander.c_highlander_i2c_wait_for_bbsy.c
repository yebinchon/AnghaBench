
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct highlander_i2c_dev {int dev; scalar_t__ base; } ;


 int ETIMEDOUT ;
 scalar_t__ SMCR ;
 int SMCR_BBSY ;
 int dev_warn (int ,char*) ;
 int iic_timeout ;
 int ioread16 (scalar_t__) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int highlander_i2c_wait_for_bbsy(struct highlander_i2c_dev *dev)
{
 unsigned long timeout;

 timeout = jiffies + msecs_to_jiffies(iic_timeout);
 while (ioread16(dev->base + SMCR) & SMCR_BBSY) {
  if (time_after(jiffies, timeout)) {
   dev_warn(dev->dev, "timeout waiting for bus ready\n");
   return -ETIMEDOUT;
  }

  msleep(1);
 }

 return 0;
}
