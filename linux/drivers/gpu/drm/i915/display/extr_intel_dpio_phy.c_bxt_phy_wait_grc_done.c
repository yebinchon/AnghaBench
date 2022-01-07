
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;


 int BXT_PORT_REF_DW3 (int) ;
 int DRM_ERROR (char*,int) ;
 int GRC_DONE ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;

__attribute__((used)) static void bxt_phy_wait_grc_done(struct drm_i915_private *dev_priv,
      enum dpio_phy phy)
{
 if (intel_de_wait_for_set(dev_priv, BXT_PORT_REF_DW3(phy),
      GRC_DONE, 10))
  DRM_ERROR("timeout waiting for PHY%d GRC\n", phy);
}
