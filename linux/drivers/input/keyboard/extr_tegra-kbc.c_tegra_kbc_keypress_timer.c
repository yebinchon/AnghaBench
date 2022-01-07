
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_list {int dummy; } ;
struct tegra_kbc {int repoll_dly; unsigned int num_pressed_keys; int lock; int idev; int * current_keys; int timer; scalar_t__ mmio; } ;


 scalar_t__ KBC_INT_0 ;
 struct tegra_kbc* from_timer (int ,struct timer_list*,int ) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 scalar_t__ jiffies ;
 struct tegra_kbc* kbc ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned long) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_kbc_report_keys (struct tegra_kbc*) ;
 int tegra_kbc_set_fifo_interrupt (struct tegra_kbc*,int) ;
 int timer ;

__attribute__((used)) static void tegra_kbc_keypress_timer(struct timer_list *t)
{
 struct tegra_kbc *kbc = from_timer(kbc, t, timer);
 unsigned long flags;
 u32 val;
 unsigned int i;

 spin_lock_irqsave(&kbc->lock, flags);

 val = (readl(kbc->mmio + KBC_INT_0) >> 4) & 0xf;
 if (val) {
  unsigned long dly;

  tegra_kbc_report_keys(kbc);





  dly = (val == 1) ? kbc->repoll_dly : 1;
  mod_timer(&kbc->timer, jiffies + msecs_to_jiffies(dly));
 } else {

  for (i = 0; i < kbc->num_pressed_keys; i++)
   input_report_key(kbc->idev, kbc->current_keys[i], 0);
  input_sync(kbc->idev);

  kbc->num_pressed_keys = 0;


  tegra_kbc_set_fifo_interrupt(kbc, 1);
 }

 spin_unlock_irqrestore(&kbc->lock, flags);
}
