
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum phy { ____Placeholder_phy } phy ;


 int COMP_INIT ;
 int I915_READ (int ) ;
 int ICL_PHY_MISC (int) ;
 int ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN ;
 int ICL_PORT_COMP_DW0 (int) ;
 scalar_t__ IS_ELKHARTLAKE (struct drm_i915_private*) ;
 int PHY_C ;

__attribute__((used)) static bool icl_combo_phy_enabled(struct drm_i915_private *dev_priv,
      enum phy phy)
{

 if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
  return I915_READ(ICL_PORT_COMP_DW0(phy)) & COMP_INIT;
 else
  return !(I915_READ(ICL_PHY_MISC(phy)) &
    ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN) &&
   (I915_READ(ICL_PORT_COMP_DW0(phy)) & COMP_INIT);
}
