
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CB1_INT ;
 size_t IER ;
 int IER_SET ;
 int adb_int_pending ;
 int enable_irq (scalar_t__) ;
 scalar_t__ gpio_irq ;
 int out_8 (int *,int) ;
 int pmu_lock ;
 int pmu_poll () ;
 scalar_t__ pmu_state ;
 int pmu_suspended ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uninitialized ;
 int * via1 ;

void
pmu_resume(void)
{
 unsigned long flags;

 if (pmu_state == uninitialized || pmu_suspended < 1)
  return;

 spin_lock_irqsave(&pmu_lock, flags);
 pmu_suspended--;
 if (pmu_suspended > 0) {
  spin_unlock_irqrestore(&pmu_lock, flags);
  return;
 }
 adb_int_pending = 1;
 if (gpio_irq >= 0)
  enable_irq(gpio_irq);
 out_8(&via1[IER], CB1_INT | IER_SET);
 spin_unlock_irqrestore(&pmu_lock, flags);
 pmu_poll();
}
