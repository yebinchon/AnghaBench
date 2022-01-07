
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct lpi2c_imx_struct {TYPE_1__ adapter; scalar_t__ base; } ;


 int EAGAIN ;
 int ETIMEDOUT ;
 scalar_t__ LPI2C_MSR ;
 unsigned int MSR_ALF ;
 unsigned int MSR_BBF ;
 unsigned int MSR_MBF ;
 int dev_dbg (int *,char*) ;
 unsigned long jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 unsigned int readl (scalar_t__) ;
 int schedule () ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int lpi2c_imx_bus_busy(struct lpi2c_imx_struct *lpi2c_imx)
{
 unsigned long orig_jiffies = jiffies;
 unsigned int temp;

 while (1) {
  temp = readl(lpi2c_imx->base + LPI2C_MSR);


  if (temp & MSR_ALF) {
   writel(temp, lpi2c_imx->base + LPI2C_MSR);
   return -EAGAIN;
  }

  if (temp & (MSR_BBF | MSR_MBF))
   break;

  if (time_after(jiffies, orig_jiffies + msecs_to_jiffies(500))) {
   dev_dbg(&lpi2c_imx->adapter.dev, "bus not work\n");
   return -ETIMEDOUT;
  }
  schedule();
 }

 return 0;
}
