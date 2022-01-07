
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_cdclk_state {scalar_t__ cdclk; scalar_t__ vco; int voltage_level; } ;
struct TYPE_2__ {struct intel_cdclk_state hw; } ;
struct drm_i915_private {TYPE_1__ cdclk; } ;


 int INVALID_PIPE ;
 scalar_t__ cnl_calc_cdclk (int ) ;
 int cnl_calc_voltage_level (scalar_t__) ;
 scalar_t__ cnl_cdclk_pll_vco (struct drm_i915_private*,scalar_t__) ;
 int cnl_sanitize_cdclk (struct drm_i915_private*) ;
 int cnl_set_cdclk (struct drm_i915_private*,struct intel_cdclk_state*,int ) ;

__attribute__((used)) static void cnl_init_cdclk(struct drm_i915_private *dev_priv)
{
 struct intel_cdclk_state cdclk_state;

 cnl_sanitize_cdclk(dev_priv);

 if (dev_priv->cdclk.hw.cdclk != 0 &&
     dev_priv->cdclk.hw.vco != 0)
  return;

 cdclk_state = dev_priv->cdclk.hw;

 cdclk_state.cdclk = cnl_calc_cdclk(0);
 cdclk_state.vco = cnl_cdclk_pll_vco(dev_priv, cdclk_state.cdclk);
 cdclk_state.voltage_level = cnl_calc_voltage_level(cdclk_state.cdclk);

 cnl_set_cdclk(dev_priv, &cdclk_state, INVALID_PIPE);
}
