
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {scalar_t__ sagv_status; } ;


 scalar_t__ I915_SAGV_NOT_CONTROLLED ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;

__attribute__((used)) static bool
intel_has_sagv(struct drm_i915_private *dev_priv)
{
 return (IS_GEN9_BC(dev_priv) || INTEL_GEN(dev_priv) >= 10) &&
  dev_priv->sagv_status != I915_SAGV_NOT_CONTROLLED;
}
