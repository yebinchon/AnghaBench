
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum tc_port { ____Placeholder_tc_port } tc_port ;
typedef enum port { ____Placeholder_port } port ;
typedef enum phy { ____Placeholder_phy } phy ;


 int ICL_DPCLKA_CFGCR0_DDI_CLK_OFF (int) ;
 int ICL_DPCLKA_CFGCR0_TC_CLK_OFF (int) ;
 scalar_t__ intel_phy_is_combo (struct drm_i915_private*,int) ;
 scalar_t__ intel_phy_is_tc (struct drm_i915_private*,int) ;
 int intel_port_to_tc (struct drm_i915_private*,int) ;

__attribute__((used)) static inline
u32 icl_dpclka_cfgcr0_clk_off(struct drm_i915_private *dev_priv,
         enum phy phy)
{
 if (intel_phy_is_combo(dev_priv, phy)) {
  return ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
 } else if (intel_phy_is_tc(dev_priv, phy)) {
  enum tc_port tc_port = intel_port_to_tc(dev_priv,
       (enum port)phy);

  return ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port);
 }

 return 0;
}
