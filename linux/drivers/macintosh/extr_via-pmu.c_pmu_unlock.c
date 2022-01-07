
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adb_int_pending ;
 scalar_t__ idle ;
 scalar_t__ locked ;
 int pmu_lock ;
 scalar_t__ pmu_state ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
pmu_unlock(void)
{
 unsigned long flags;

 spin_lock_irqsave(&pmu_lock, flags);
 if (pmu_state == locked)
  pmu_state = idle;
 adb_int_pending = 1;
 spin_unlock_irqrestore(&pmu_lock, flags);
}
