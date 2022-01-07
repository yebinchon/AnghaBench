
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos5_i2c {scalar_t__ regs; } ;


 int EBUSY ;
 int HSI2C_MASTER_BUSY ;
 scalar_t__ HSI2C_TRANS_STATUS ;
 int jiffies ;
 int msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 scalar_t__ time_before (int,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int exynos5_i2c_wait_bus_idle(struct exynos5_i2c *i2c)
{
 unsigned long stop_time;
 u32 trans_status;


 stop_time = jiffies + msecs_to_jiffies(100) + 1;
 do {
  trans_status = readl(i2c->regs + HSI2C_TRANS_STATUS);
  if (!(trans_status & HSI2C_MASTER_BUSY))
   return 0;

  usleep_range(50, 200);
 } while (time_before(jiffies, stop_time));

 return -EBUSY;
}
