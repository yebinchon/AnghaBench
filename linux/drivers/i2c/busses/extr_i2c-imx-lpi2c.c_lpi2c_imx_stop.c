
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct lpi2c_imx_struct {TYPE_1__ adapter; scalar_t__ base; } ;


 int GEN_STOP ;
 scalar_t__ LPI2C_MSR ;
 scalar_t__ LPI2C_MTDR ;
 unsigned int MSR_SDF ;
 int dev_dbg (int *,char*) ;
 unsigned long jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 unsigned int readl (scalar_t__) ;
 int schedule () ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void lpi2c_imx_stop(struct lpi2c_imx_struct *lpi2c_imx)
{
 unsigned long orig_jiffies = jiffies;
 unsigned int temp;

 writel(GEN_STOP << 8, lpi2c_imx->base + LPI2C_MTDR);

 do {
  temp = readl(lpi2c_imx->base + LPI2C_MSR);
  if (temp & MSR_SDF)
   break;

  if (time_after(jiffies, orig_jiffies + msecs_to_jiffies(500))) {
   dev_dbg(&lpi2c_imx->adapter.dev, "stop timeout\n");
   break;
  }
  schedule();

 } while (1);
}
