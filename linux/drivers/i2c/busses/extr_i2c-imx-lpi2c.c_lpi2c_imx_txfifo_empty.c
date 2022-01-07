
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct lpi2c_imx_struct {TYPE_1__ adapter; scalar_t__ base; } ;


 int EIO ;
 int ETIMEDOUT ;
 scalar_t__ LPI2C_MFSR ;
 scalar_t__ LPI2C_MSR ;
 int MSR_NDF ;
 int dev_dbg (int *,char*) ;
 unsigned long jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 int schedule () ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;

__attribute__((used)) static int lpi2c_imx_txfifo_empty(struct lpi2c_imx_struct *lpi2c_imx)
{
 unsigned long orig_jiffies = jiffies;
 u32 txcnt;

 do {
  txcnt = readl(lpi2c_imx->base + LPI2C_MFSR) & 0xff;

  if (readl(lpi2c_imx->base + LPI2C_MSR) & MSR_NDF) {
   dev_dbg(&lpi2c_imx->adapter.dev, "NDF detected\n");
   return -EIO;
  }

  if (time_after(jiffies, orig_jiffies + msecs_to_jiffies(500))) {
   dev_dbg(&lpi2c_imx->adapter.dev, "txfifo empty timeout\n");
   return -ETIMEDOUT;
  }
  schedule();

 } while (txcnt);

 return 0;
}
