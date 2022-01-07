
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mutex; int interactive; } ;
struct intel_rps {TYPE_3__ power; } ;
struct TYPE_4__ {int awake; } ;
struct TYPE_5__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt; TYPE_2__ gt_pm; } ;


 int GEM_BUG_ON (int) ;
 int HIGH_POWER ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ READ_ONCE (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rps_set_power (struct drm_i915_private*,int ) ;

void intel_rps_mark_interactive(struct drm_i915_private *i915, bool interactive)
{
 struct intel_rps *rps = &i915->gt_pm.rps;

 if (INTEL_GEN(i915) < 6)
  return;

 mutex_lock(&rps->power.mutex);
 if (interactive) {
  if (!rps->power.interactive++ && READ_ONCE(i915->gt.awake))
   rps_set_power(i915, HIGH_POWER);
 } else {
  GEM_BUG_ON(!rps->power.interactive);
  rps->power.interactive--;
 }
 mutex_unlock(&rps->power.mutex);
}
