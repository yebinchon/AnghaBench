
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int runtime_pm; } ;


 int intel_runtime_pm_get (int *) ;

__attribute__((used)) static inline void mmio_hw_access_pre(struct drm_i915_private *dev_priv)
{
 intel_runtime_pm_get(&dev_priv->runtime_pm);
}
