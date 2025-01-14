
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct bxt_ddi_phy_info {int dummy; } ;


 int ARRAY_SIZE (struct bxt_ddi_phy_info const*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 struct bxt_ddi_phy_info const* bxt_ddi_phy_info ;
 struct bxt_ddi_phy_info const* glk_ddi_phy_info ;

__attribute__((used)) static const struct bxt_ddi_phy_info *
bxt_get_phy_list(struct drm_i915_private *dev_priv, int *count)
{
 if (IS_GEMINILAKE(dev_priv)) {
  *count = ARRAY_SIZE(glk_ddi_phy_info);
  return glk_ddi_phy_info;
 } else {
  *count = ARRAY_SIZE(bxt_ddi_phy_info);
  return bxt_ddi_phy_info;
 }
}
