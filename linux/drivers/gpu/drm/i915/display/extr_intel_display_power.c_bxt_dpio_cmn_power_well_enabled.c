
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int phy; } ;
struct TYPE_4__ {TYPE_1__ bxt; } ;


 int bxt_ddi_phy_is_enabled (struct drm_i915_private*,int ) ;

__attribute__((used)) static bool bxt_dpio_cmn_power_well_enabled(struct drm_i915_private *dev_priv,
         struct i915_power_well *power_well)
{
 return bxt_ddi_phy_is_enabled(dev_priv, power_well->desc->bxt.phy);
}
