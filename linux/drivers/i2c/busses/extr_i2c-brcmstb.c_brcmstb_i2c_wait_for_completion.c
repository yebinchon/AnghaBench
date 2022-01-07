
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmstb_i2c_dev {scalar_t__ irq; int done; } ;


 int BSC_IIC_EN_INTRP_MASK ;
 int ETIMEDOUT ;
 int I2C_TIMEOUT ;
 int INT_DISABLE ;
 int brcmstb_i2c_enable_disable_irq (struct brcmstb_i2c_dev*,int ) ;
 int bsc_readl (struct brcmstb_i2c_dev*,int ) ;
 int cpu_relax () ;
 int iic_enable ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int brcmstb_i2c_wait_for_completion(struct brcmstb_i2c_dev *dev)
{
 int ret = 0;
 unsigned long timeout = msecs_to_jiffies(I2C_TIMEOUT);

 if (dev->irq >= 0) {
  if (!wait_for_completion_timeout(&dev->done, timeout))
   ret = -ETIMEDOUT;
 } else {

  u32 bsc_intrp;
  unsigned long time_left = jiffies + timeout;

  do {
   bsc_intrp = bsc_readl(dev, iic_enable) &
    BSC_IIC_EN_INTRP_MASK;
   if (time_after(jiffies, time_left)) {
    ret = -ETIMEDOUT;
    break;
   }
   cpu_relax();
  } while (!bsc_intrp);
 }

 if (dev->irq < 0 || ret == -ETIMEDOUT)
  brcmstb_i2c_enable_disable_irq(dev, INT_DISABLE);

 return ret;
}
