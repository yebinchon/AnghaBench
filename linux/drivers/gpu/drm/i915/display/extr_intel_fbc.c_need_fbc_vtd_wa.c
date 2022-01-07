
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DRM_INFO (char*) ;
 scalar_t__ IS_BROXTON (struct drm_i915_private*) ;
 scalar_t__ IS_SKYLAKE (struct drm_i915_private*) ;
 scalar_t__ intel_vtd_active () ;

__attribute__((used)) static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)
{

 if (intel_vtd_active() &&
     (IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))) {
  DRM_INFO("Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
  return 1;
 }

 return 0;
}
