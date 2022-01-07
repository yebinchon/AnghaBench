
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum phy { ____Placeholder_phy } phy ;


 int CL_POWER_DOWN_ENABLE ;
 int CNL_PORT_CL1CM_DW5 ;
 int PHY_A ;
 int check_phy_reg (struct drm_i915_private*,int,int ,int ,int ) ;
 int cnl_combo_phy_enabled (struct drm_i915_private*) ;
 int cnl_verify_procmon_ref_values (struct drm_i915_private*,int) ;

__attribute__((used)) static bool cnl_combo_phy_verify_state(struct drm_i915_private *dev_priv)
{
 enum phy phy = PHY_A;
 bool ret;

 if (!cnl_combo_phy_enabled(dev_priv))
  return 0;

 ret = cnl_verify_procmon_ref_values(dev_priv, phy);

 ret &= check_phy_reg(dev_priv, phy, CNL_PORT_CL1CM_DW5,
        CL_POWER_DOWN_ENABLE, CL_POWER_DOWN_ENABLE);

 return ret;
}
