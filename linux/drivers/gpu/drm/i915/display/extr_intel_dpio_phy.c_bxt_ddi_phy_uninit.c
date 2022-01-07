
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct bxt_ddi_phy_info {int pwron_mask; } ;
typedef enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;


 int BXT_PHY_CTL_FAMILY (int) ;
 int BXT_P_CR_GT_DISP_PWRON ;
 int COMMON_RESET_DIS ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 struct bxt_ddi_phy_info* bxt_get_phy_info (struct drm_i915_private*,int) ;

void bxt_ddi_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
{
 const struct bxt_ddi_phy_info *phy_info;
 u32 val;

 phy_info = bxt_get_phy_info(dev_priv, phy);

 val = I915_READ(BXT_PHY_CTL_FAMILY(phy));
 val &= ~COMMON_RESET_DIS;
 I915_WRITE(BXT_PHY_CTL_FAMILY(phy), val);

 val = I915_READ(BXT_P_CR_GT_DISP_PWRON);
 val &= ~phy_info->pwron_mask;
 I915_WRITE(BXT_P_CR_GT_DISP_PWRON, val);
}
