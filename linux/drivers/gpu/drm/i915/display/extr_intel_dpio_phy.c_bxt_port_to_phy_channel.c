
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {int dummy; } ;
struct bxt_ddi_phy_info {TYPE_1__* channel; scalar_t__ dual_channel; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;
typedef enum dpio_channel { ____Placeholder_dpio_channel } dpio_channel ;
struct TYPE_2__ {int port; } ;


 size_t DPIO_CH0 ;
 size_t DPIO_CH1 ;
 int DPIO_PHY0 ;
 int WARN (int,char*,int ) ;
 struct bxt_ddi_phy_info* bxt_get_phy_list (struct drm_i915_private*,int*) ;
 int port_name (int) ;

void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
        enum dpio_phy *phy, enum dpio_channel *ch)
{
 const struct bxt_ddi_phy_info *phy_info, *phys;
 int i, count;

 phys = bxt_get_phy_list(dev_priv, &count);

 for (i = 0; i < count; i++) {
  phy_info = &phys[i];

  if (port == phy_info->channel[DPIO_CH0].port) {
   *phy = i;
   *ch = DPIO_CH0;
   return;
  }

  if (phy_info->dual_channel &&
      port == phy_info->channel[DPIO_CH1].port) {
   *phy = i;
   *ch = DPIO_CH1;
   return;
  }
 }

 WARN(1, "PHY not found for PORT %c", port_name(port));
 *phy = DPIO_PHY0;
 *ch = DPIO_CH0;
}
