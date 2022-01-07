
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int CHICKEN_MISC_2 ;
 int CNL_COMP_PWR_DOWN ;
 int DRM_WARN (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int cnl_combo_phy_verify_state (struct drm_i915_private*) ;

__attribute__((used)) static void cnl_combo_phys_uninit(struct drm_i915_private *dev_priv)
{
 u32 val;

 if (!cnl_combo_phy_verify_state(dev_priv))
  DRM_WARN("Combo PHY HW state changed unexpectedly.\n");

 val = I915_READ(CHICKEN_MISC_2);
 val |= CNL_COMP_PWR_DOWN;
 I915_WRITE(CHICKEN_MISC_2, val);
}
