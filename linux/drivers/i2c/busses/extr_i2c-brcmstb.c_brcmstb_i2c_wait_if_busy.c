
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmstb_i2c_dev {int dummy; } ;


 int BSC_IIC_EN_INTRP_MASK ;
 int ETIMEDOUT ;
 int I2C_TIMEOUT ;
 int bsc_readl (struct brcmstb_i2c_dev*,int ) ;
 int cpu_relax () ;
 int iic_enable ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int brcmstb_i2c_wait_if_busy(struct brcmstb_i2c_dev *dev)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(I2C_TIMEOUT);

 while ((bsc_readl(dev, iic_enable) & BSC_IIC_EN_INTRP_MASK)) {
  if (time_after(jiffies, timeout))
   return -ETIMEDOUT;
  cpu_relax();
 }
 return 0;
}
