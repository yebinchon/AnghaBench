
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct bxt_ddi_phy_info {int dummy; } ;
typedef enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;


 struct bxt_ddi_phy_info* bxt_get_phy_list (struct drm_i915_private*,int*) ;

__attribute__((used)) static const struct bxt_ddi_phy_info *
bxt_get_phy_info(struct drm_i915_private *dev_priv, enum dpio_phy phy)
{
 int count;
 const struct bxt_ddi_phy_info *phy_list =
  bxt_get_phy_list(dev_priv, &count);

 return &phy_list[phy];
}
