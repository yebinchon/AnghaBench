
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int CHICKEN_MISC_2 ;
 int CNL_COMP_PWR_DOWN ;
 int CNL_PORT_COMP_DW0 ;
 int COMP_INIT ;
 int I915_READ (int ) ;

__attribute__((used)) static bool cnl_combo_phy_enabled(struct drm_i915_private *dev_priv)
{
 return !(I915_READ(CHICKEN_MISC_2) & CNL_COMP_PWR_DOWN) &&
  (I915_READ(CNL_PORT_COMP_DW0) & COMP_INIT);
}
