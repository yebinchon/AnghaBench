
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_kbc {int keypress_caused_wake; int lock; scalar_t__ cp_dly_jiffies; int timer; scalar_t__ mmio; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ KBC_INT_0 ;
 int KBC_INT_FIFO_CNT_INT_STATUS ;
 int KBC_INT_KEYPRESS_INT_STATUS ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_kbc_set_fifo_interrupt (struct tegra_kbc*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t tegra_kbc_isr(int irq, void *args)
{
 struct tegra_kbc *kbc = args;
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&kbc->lock, flags);





 val = readl(kbc->mmio + KBC_INT_0);
 writel(val, kbc->mmio + KBC_INT_0);

 if (val & KBC_INT_FIFO_CNT_INT_STATUS) {




  tegra_kbc_set_fifo_interrupt(kbc, 0);
  mod_timer(&kbc->timer, jiffies + kbc->cp_dly_jiffies);
 } else if (val & KBC_INT_KEYPRESS_INT_STATUS) {

  kbc->keypress_caused_wake = 1;
 }

 spin_unlock_irqrestore(&kbc->lock, flags);

 return IRQ_HANDLED;
}
