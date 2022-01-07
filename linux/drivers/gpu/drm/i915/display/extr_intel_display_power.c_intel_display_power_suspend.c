
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 int bxt_display_core_uninit (struct drm_i915_private*) ;
 int bxt_enable_dc9 (struct drm_i915_private*) ;
 int hsw_enable_pc8 (struct drm_i915_private*) ;
 int icl_display_core_uninit (struct drm_i915_private*) ;

void intel_display_power_suspend(struct drm_i915_private *i915)
{
 if (INTEL_GEN(i915) >= 11) {
  icl_display_core_uninit(i915);
  bxt_enable_dc9(i915);
 } else if (IS_GEN9_LP(i915)) {
  bxt_display_core_uninit(i915);
  bxt_enable_dc9(i915);
 } else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
  hsw_enable_pc8(i915);
 }
}
