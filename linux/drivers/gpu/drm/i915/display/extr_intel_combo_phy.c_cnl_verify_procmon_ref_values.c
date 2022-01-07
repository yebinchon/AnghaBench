
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct cnl_procmon {int dw10; int dw9; int dw1; } ;
typedef enum phy { ____Placeholder_phy } phy ;


 int ICL_PORT_COMP_DW1 (int) ;
 int ICL_PORT_COMP_DW10 (int) ;
 int ICL_PORT_COMP_DW9 (int) ;
 int check_phy_reg (struct drm_i915_private*,int,int ,unsigned int,int ) ;
 struct cnl_procmon* cnl_get_procmon_ref_values (struct drm_i915_private*,int) ;

__attribute__((used)) static bool cnl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
       enum phy phy)
{
 const struct cnl_procmon *procmon;
 bool ret;

 procmon = cnl_get_procmon_ref_values(dev_priv, phy);

 ret = check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW1(phy),
       (0xff << 16) | 0xff, procmon->dw1);
 ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW9(phy),
        -1U, procmon->dw9);
 ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW10(phy),
        -1U, procmon->dw10);

 return ret;
}
