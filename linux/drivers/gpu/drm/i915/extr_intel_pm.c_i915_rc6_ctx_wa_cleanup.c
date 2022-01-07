
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx_corrupted; int ctx_corrupted_wakeref; } ;
struct TYPE_4__ {TYPE_1__ rc6; } ;
struct drm_i915_private {TYPE_2__ gt_pm; int runtime_pm; } ;


 int intel_runtime_pm_put (int *,int ) ;

__attribute__((used)) static void i915_rc6_ctx_wa_cleanup(struct drm_i915_private *i915)
{
 if (i915->gt_pm.rc6.ctx_corrupted) {
  intel_runtime_pm_put(&i915->runtime_pm,
         i915->gt_pm.rc6.ctx_corrupted_wakeref);
  i915->gt_pm.rc6.ctx_corrupted = 0;
 }
}
