
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore {TYPE_1__* debug; } ;
struct TYPE_2__ {int lock; } ;


 int check_for_unclaimed_mmio (struct intel_uncore*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

bool intel_uncore_unclaimed_mmio(struct intel_uncore *uncore)
{
 bool ret;

 spin_lock_irq(&uncore->debug->lock);
 ret = check_for_unclaimed_mmio(uncore);
 spin_unlock_irq(&uncore->debug->lock);

 return ret;
}
