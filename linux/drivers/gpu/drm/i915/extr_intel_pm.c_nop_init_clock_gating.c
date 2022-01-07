
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;

__attribute__((used)) static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
{
 DRM_DEBUG_KMS("No clock gating settings or workarounds applied.\n");
}
