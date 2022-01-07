
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 int cnl_combo_phys_init (struct drm_i915_private*) ;
 int icl_combo_phys_init (struct drm_i915_private*) ;

void intel_combo_phy_init(struct drm_i915_private *i915)
{
 if (INTEL_GEN(i915) >= 11)
  icl_combo_phys_init(i915);
 else if (IS_CANNONLAKE(i915))
  cnl_combo_phys_init(i915);
}
