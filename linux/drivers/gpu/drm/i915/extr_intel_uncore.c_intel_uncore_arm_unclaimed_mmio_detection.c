
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_uncore {TYPE_1__* debug; } ;
struct TYPE_4__ {int mmio_debug; } ;
struct TYPE_3__ {scalar_t__ unclaimed_mmio_check; int lock; } ;


 int DRM_DEBUG (char*) ;
 int check_for_unclaimed_mmio (struct intel_uncore*) ;
 TYPE_2__ i915_modparams ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;

bool
intel_uncore_arm_unclaimed_mmio_detection(struct intel_uncore *uncore)
{
 bool ret = 0;

 spin_lock_irq(&uncore->debug->lock);

 if (unlikely(uncore->debug->unclaimed_mmio_check <= 0))
  goto out;

 if (unlikely(check_for_unclaimed_mmio(uncore))) {
  if (!i915_modparams.mmio_debug) {
   DRM_DEBUG("Unclaimed register detected, "
      "enabling oneshot unclaimed register reporting. "
      "Please use i915.mmio_debug=N for more information.\n");
   i915_modparams.mmio_debug++;
  }
  uncore->debug->unclaimed_mmio_check--;
  ret = 1;
 }

out:
 spin_unlock_irq(&uncore->debug->lock);

 return ret;
}
