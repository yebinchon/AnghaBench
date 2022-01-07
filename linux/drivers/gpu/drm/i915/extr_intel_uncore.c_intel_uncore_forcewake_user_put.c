
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_uncore {int lock; TYPE_3__* debug; TYPE_1__* i915; int user_forcewake_count; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {TYPE_2__ drm; } ;


 int FORCEWAKE_ALL ;
 scalar_t__ check_for_unclaimed_mmio (struct intel_uncore*) ;
 int dev_info (int ,char*) ;
 int intel_uncore_forcewake_put__locked (struct intel_uncore*,int ) ;
 int mmio_debug_resume (TYPE_3__*) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

void intel_uncore_forcewake_user_put(struct intel_uncore *uncore)
{
 spin_lock_irq(&uncore->lock);
 if (!--uncore->user_forcewake_count) {
  spin_lock(&uncore->debug->lock);
  mmio_debug_resume(uncore->debug);

  if (check_for_unclaimed_mmio(uncore))
   dev_info(uncore->i915->drm.dev,
     "Invalid mmio detected during user access\n");
  spin_unlock(&uncore->debug->lock);

  intel_uncore_forcewake_put__locked(uncore, FORCEWAKE_ALL);
 }
 spin_unlock_irq(&uncore->lock);
}
