
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_kbc {int clk; int timer; int irq; int lock; scalar_t__ mmio; } ;


 scalar_t__ KBC_CONTROL_0 ;
 int clk_disable_unprepare (int ) ;
 int del_timer_sync (int *) ;
 int disable_irq (int ) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tegra_kbc_stop(struct tegra_kbc *kbc)
{
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&kbc->lock, flags);
 val = readl(kbc->mmio + KBC_CONTROL_0);
 val &= ~1;
 writel(val, kbc->mmio + KBC_CONTROL_0);
 spin_unlock_irqrestore(&kbc->lock, flags);

 disable_irq(kbc->irq);
 del_timer_sync(&kbc->timer);

 clk_disable_unprepare(kbc->clk);
}
