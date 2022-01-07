
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct intel_rps {scalar_t__ idle_freq; scalar_t__ cur_freq; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {int uncore; TYPE_1__ gt_pm; } ;


 int DRM_ERROR (char*) ;
 int FORCEWAKE_MEDIA ;
 int intel_uncore_forcewake_get (int *,int ) ;
 int intel_uncore_forcewake_put (int *,int ) ;
 int valleyview_set_rps (struct drm_i915_private*,scalar_t__) ;

__attribute__((used)) static void vlv_set_rps_idle(struct drm_i915_private *dev_priv)
{
 struct intel_rps *rps = &dev_priv->gt_pm.rps;
 u32 val = rps->idle_freq;
 int err;

 if (rps->cur_freq <= val)
  return;
 intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_MEDIA);
 err = valleyview_set_rps(dev_priv, val);
 intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_MEDIA);

 if (err)
  DRM_ERROR("Failed to set RPS for idle\n");
}
