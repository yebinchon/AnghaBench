
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct lpi2c_imx_struct {TYPE_2__ adapter; scalar_t__ base; } ;


 scalar_t__ LPI2C_MCR ;
 int MCR_MEN ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int lpi2c_imx_master_disable(struct lpi2c_imx_struct *lpi2c_imx)
{
 u32 temp;

 temp = readl(lpi2c_imx->base + LPI2C_MCR);
 temp &= ~MCR_MEN;
 writel(temp, lpi2c_imx->base + LPI2C_MCR);

 pm_runtime_mark_last_busy(lpi2c_imx->adapter.dev.parent);
 pm_runtime_put_autosuspend(lpi2c_imx->adapter.dev.parent);

 return 0;
}
