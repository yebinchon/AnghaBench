
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_kbc {scalar_t__ mmio; } ;


 scalar_t__ KBC_CONTROL_0 ;
 int KBC_CONTROL_FIFO_CNT_INT_EN ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void tegra_kbc_set_fifo_interrupt(struct tegra_kbc *kbc, bool enable)
{
 u32 val;

 val = readl(kbc->mmio + KBC_CONTROL_0);
 if (enable)
  val |= KBC_CONTROL_FIFO_CNT_INT_EN;
 else
  val &= ~KBC_CONTROL_FIFO_CNT_INT_EN;
 writel(val, kbc->mmio + KBC_CONTROL_0);
}
