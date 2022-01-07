
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct exynos5_i2c {scalar_t__ regs; TYPE_1__* variant; } ;
struct TYPE_2__ {scalar_t__ hw; } ;


 int HSI2C_MASTER_ST_LOSE ;
 int HSI2C_MASTER_ST_MASK ;
 scalar_t__ HSI2C_TRANS_STATUS ;
 scalar_t__ I2C_TYPE_EXYNOS7 ;
 int exynos5_i2c_bus_recover (struct exynos5_i2c*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;

__attribute__((used)) static void exynos5_i2c_bus_check(struct exynos5_i2c *i2c)
{
 unsigned long timeout;

 if (i2c->variant->hw != I2C_TYPE_EXYNOS7)
  return;






 timeout = jiffies + msecs_to_jiffies(100);
 for (;;) {
  u32 st = readl(i2c->regs + HSI2C_TRANS_STATUS);

  if ((st & HSI2C_MASTER_ST_MASK) != HSI2C_MASTER_ST_LOSE)
   return;

  if (time_is_before_jiffies(timeout))
   return;

  exynos5_i2c_bus_recover(i2c);
 }
}
