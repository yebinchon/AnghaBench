
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {scalar_t__ sagv_status; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*) ;
 int ENXIO ;
 int GEN9_PCODE_SAGV_CONTROL ;
 int GEN9_SAGV_ENABLE ;
 scalar_t__ I915_SAGV_ENABLED ;
 scalar_t__ I915_SAGV_NOT_CONTROLLED ;
 scalar_t__ IS_SKYLAKE (struct drm_i915_private*) ;
 int intel_has_sagv (struct drm_i915_private*) ;
 int sandybridge_pcode_write (struct drm_i915_private*,int ,int ) ;

int
intel_enable_sagv(struct drm_i915_private *dev_priv)
{
 int ret;

 if (!intel_has_sagv(dev_priv))
  return 0;

 if (dev_priv->sagv_status == I915_SAGV_ENABLED)
  return 0;

 DRM_DEBUG_KMS("Enabling SAGV\n");
 ret = sandybridge_pcode_write(dev_priv, GEN9_PCODE_SAGV_CONTROL,
          GEN9_SAGV_ENABLE);







 if (IS_SKYLAKE(dev_priv) && ret == -ENXIO) {
  DRM_DEBUG_DRIVER("No SAGV found on system, ignoring\n");
  dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
  return 0;
 } else if (ret < 0) {
  DRM_ERROR("Failed to enable SAGV\n");
  return ret;
 }

 dev_priv->sagv_status = I915_SAGV_ENABLED;
 return 0;
}
