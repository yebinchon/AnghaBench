
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_well {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int hsw_power_well_disable (struct drm_i915_private*,struct i915_power_well*) ;
 int icl_tc_port_assert_ref_held (struct drm_i915_private*,struct i915_power_well*) ;

__attribute__((used)) static void
icl_tc_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
      struct i915_power_well *power_well)
{
 icl_tc_port_assert_ref_held(dev_priv, power_well);

 hsw_power_well_disable(dev_priv, power_well);
}
