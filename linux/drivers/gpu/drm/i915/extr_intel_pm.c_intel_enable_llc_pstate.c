
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int enabled; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_6__ {TYPE_2__ llc_pstate; TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_3__ gt_pm; } ;


 int gen6_update_ring_freq (struct drm_i915_private*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline void intel_enable_llc_pstate(struct drm_i915_private *i915)
{
 lockdep_assert_held(&i915->gt_pm.rps.lock);

 if (i915->gt_pm.llc_pstate.enabled)
  return;

 gen6_update_ring_freq(i915);

 i915->gt_pm.llc_pstate.enabled = 1;
}
