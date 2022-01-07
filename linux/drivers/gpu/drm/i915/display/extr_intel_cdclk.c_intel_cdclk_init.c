
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 int bxt_init_cdclk (struct drm_i915_private*) ;
 int cnl_init_cdclk (struct drm_i915_private*) ;
 int icl_init_cdclk (struct drm_i915_private*) ;
 int skl_init_cdclk (struct drm_i915_private*) ;

void intel_cdclk_init(struct drm_i915_private *i915)
{
 if (INTEL_GEN(i915) >= 11)
  icl_init_cdclk(i915);
 else if (IS_CANNONLAKE(i915))
  cnl_init_cdclk(i915);
 else if (IS_GEN9_BC(i915))
  skl_init_cdclk(i915);
 else if (IS_GEN9_LP(i915))
  bxt_init_cdclk(i915);
}
