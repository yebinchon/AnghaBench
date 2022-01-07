
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_i915_private {int runtime_pm; } ;
typedef int intel_wakeref_t ;


 int CAN_PSR (struct drm_i915_private*) ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int ENODEV ;
 int intel_psr_debug_set (struct drm_i915_private*,int ) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;

__attribute__((used)) static int
i915_edp_psr_debug_set(void *data, u64 val)
{
 struct drm_i915_private *dev_priv = data;
 intel_wakeref_t wakeref;
 int ret;

 if (!CAN_PSR(dev_priv))
  return -ENODEV;

 DRM_DEBUG_KMS("Setting PSR debug to %llx\n", val);

 wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);

 ret = intel_psr_debug_set(dev_priv, val);

 intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);

 return ret;
}
