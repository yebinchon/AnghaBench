
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct lpi2c_imx_struct {TYPE_2__ adapter; scalar_t__ base; } ;


 scalar_t__ LPI2C_MCR ;
 unsigned int MCR_MEN ;
 unsigned int MCR_RST ;
 int lpi2c_imx_config (struct lpi2c_imx_struct*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int lpi2c_imx_master_enable(struct lpi2c_imx_struct *lpi2c_imx)
{
 unsigned int temp;
 int ret;

 ret = pm_runtime_get_sync(lpi2c_imx->adapter.dev.parent);
 if (ret < 0)
  return ret;

 temp = MCR_RST;
 writel(temp, lpi2c_imx->base + LPI2C_MCR);
 writel(0, lpi2c_imx->base + LPI2C_MCR);

 ret = lpi2c_imx_config(lpi2c_imx);
 if (ret)
  goto rpm_put;

 temp = readl(lpi2c_imx->base + LPI2C_MCR);
 temp |= MCR_MEN;
 writel(temp, lpi2c_imx->base + LPI2C_MCR);

 return 0;

rpm_put:
 pm_runtime_mark_last_busy(lpi2c_imx->adapter.dev.parent);
 pm_runtime_put_autosuspend(lpi2c_imx->adapter.dev.parent);

 return ret;
}
