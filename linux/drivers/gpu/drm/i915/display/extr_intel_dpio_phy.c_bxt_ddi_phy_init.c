
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct drm_i915_private {TYPE_1__ power_domains; } ;
struct bxt_ddi_phy_info {int rcomp_phy; } ;
typedef enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;


 int _bxt_ddi_phy_init (struct drm_i915_private*,int) ;
 int bxt_ddi_phy_is_enabled (struct drm_i915_private*,int) ;
 int bxt_ddi_phy_uninit (struct drm_i915_private*,int) ;
 struct bxt_ddi_phy_info* bxt_get_phy_info (struct drm_i915_private*,int) ;
 int lockdep_assert_held (int *) ;

void bxt_ddi_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
{
 const struct bxt_ddi_phy_info *phy_info =
  bxt_get_phy_info(dev_priv, phy);
 enum dpio_phy rcomp_phy = phy_info->rcomp_phy;
 bool was_enabled;

 lockdep_assert_held(&dev_priv->power_domains.lock);

 was_enabled = 1;
 if (rcomp_phy != -1)
  was_enabled = bxt_ddi_phy_is_enabled(dev_priv, rcomp_phy);





 if (!was_enabled)
  _bxt_ddi_phy_init(dev_priv, rcomp_phy);

 _bxt_ddi_phy_init(dev_priv, phy);

 if (!was_enabled)
  bxt_ddi_phy_uninit(dev_priv, rcomp_phy);
}
