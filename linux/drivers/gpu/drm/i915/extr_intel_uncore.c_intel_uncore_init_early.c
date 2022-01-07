
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int * debug; int * rpm; struct drm_i915_private* i915; int lock; } ;
struct drm_i915_private {int mmio_debug; int runtime_pm; } ;


 int spin_lock_init (int *) ;

void intel_uncore_init_early(struct intel_uncore *uncore,
        struct drm_i915_private *i915)
{
 spin_lock_init(&uncore->lock);
 uncore->i915 = i915;
 uncore->rpm = &i915->runtime_pm;
 uncore->debug = &i915->mmio_debug;
}
