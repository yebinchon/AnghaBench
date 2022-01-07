
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_guc {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* i915; } ;


 int ARRAY_SIZE (int*) ;
 int GUC_FORCEWAKE_MEDIA ;
 int GUC_FORCEWAKE_RENDER ;
 int HAS_RC6 (struct drm_i915_private*) ;
 int INTEL_GUC_ACTION_SAMPLE_FORCEWAKE ;
 scalar_t__ NEEDS_WaRsDisableCoarsePowerGating (struct drm_i915_private*) ;
 TYPE_1__* guc_to_gt (struct intel_guc*) ;
 int intel_guc_send (struct intel_guc*,int*,int ) ;

int intel_guc_sample_forcewake(struct intel_guc *guc)
{
 struct drm_i915_private *dev_priv = guc_to_gt(guc)->i915;
 u32 action[2];

 action[0] = INTEL_GUC_ACTION_SAMPLE_FORCEWAKE;

 if (!HAS_RC6(dev_priv) || NEEDS_WaRsDisableCoarsePowerGating(dev_priv))
  action[1] = 0;
 else

  action[1] = GUC_FORCEWAKE_RENDER | GUC_FORCEWAKE_MEDIA;

 return intel_guc_send(guc, action, ARRAY_SIZE(action));
}
