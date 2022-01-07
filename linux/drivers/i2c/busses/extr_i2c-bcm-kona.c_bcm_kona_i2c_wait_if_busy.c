
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_kona_i2c_dev {int device; scalar_t__ base; } ;


 int ETIMEDOUT ;
 int I2C_TIMEOUT ;
 int ISR_CMDBUSY_MASK ;
 scalar_t__ ISR_OFFSET ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int readl (scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int bcm_kona_i2c_wait_if_busy(struct bcm_kona_i2c_dev *dev)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(I2C_TIMEOUT);

 while (readl(dev->base + ISR_OFFSET) & ISR_CMDBUSY_MASK)
  if (time_after(jiffies, timeout)) {
   dev_err(dev->device, "CMDBUSY timeout\n");
   return -ETIMEDOUT;
  }

 return 0;
}
