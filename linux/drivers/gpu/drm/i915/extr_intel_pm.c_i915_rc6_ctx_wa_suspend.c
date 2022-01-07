
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx_corrupted_wakeref; scalar_t__ ctx_corrupted; } ;
struct TYPE_4__ {TYPE_1__ rc6; } ;
struct drm_i915_private {TYPE_2__ gt_pm; int runtime_pm; } ;


 int intel_runtime_pm_put (int *,int ) ;

void i915_rc6_ctx_wa_suspend(struct drm_i915_private *i915)
{
 if (i915->gt_pm.rc6.ctx_corrupted)
  intel_runtime_pm_put(&i915->runtime_pm,
         i915->gt_pm.rc6.ctx_corrupted_wakeref);
}
