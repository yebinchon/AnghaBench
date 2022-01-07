
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_kbc {scalar_t__ mmio; TYPE_1__* hw_support; int wakeup; } ;
struct TYPE_2__ {int max_rows; } ;


 scalar_t__ KBC_ROW0_MASK_0 ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void tegra_kbc_setup_wakekeys(struct tegra_kbc *kbc, bool filter)
{
 int i;
 unsigned int rst_val;


 rst_val = (filter && !kbc->wakeup) ? ~0 : 0;

 for (i = 0; i < kbc->hw_support->max_rows; i++)
  writel(rst_val, kbc->mmio + KBC_ROW0_MASK_0 + i * 4);
}
