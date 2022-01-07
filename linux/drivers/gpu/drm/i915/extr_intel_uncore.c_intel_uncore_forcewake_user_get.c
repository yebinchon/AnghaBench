
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore {int lock; TYPE_1__* debug; int user_forcewake_count; } ;
struct TYPE_2__ {int lock; } ;


 int FORCEWAKE_ALL ;
 int intel_uncore_forcewake_get__locked (struct intel_uncore*,int ) ;
 int mmio_debug_suspend (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

void intel_uncore_forcewake_user_get(struct intel_uncore *uncore)
{
 spin_lock_irq(&uncore->lock);
 if (!uncore->user_forcewake_count++) {
  intel_uncore_forcewake_get__locked(uncore, FORCEWAKE_ALL);
  spin_lock(&uncore->debug->lock);
  mmio_debug_suspend(uncore->debug);
  spin_unlock(&uncore->debug->lock);
 }
 spin_unlock_irq(&uncore->lock);
}
