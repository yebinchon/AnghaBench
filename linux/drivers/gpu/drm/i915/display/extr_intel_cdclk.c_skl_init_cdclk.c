
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_cdclk_state {scalar_t__ cdclk; scalar_t__ vco; int voltage_level; } ;
struct TYPE_2__ {struct intel_cdclk_state hw; } ;
struct drm_i915_private {scalar_t__ skl_preferred_vco_freq; TYPE_1__ cdclk; } ;


 int INVALID_PIPE ;
 scalar_t__ skl_calc_cdclk (int ,int) ;
 int skl_calc_voltage_level (scalar_t__) ;
 int skl_sanitize_cdclk (struct drm_i915_private*) ;
 int skl_set_cdclk (struct drm_i915_private*,struct intel_cdclk_state*,int ) ;
 int skl_set_preferred_cdclk_vco (struct drm_i915_private*,scalar_t__) ;

__attribute__((used)) static void skl_init_cdclk(struct drm_i915_private *dev_priv)
{
 struct intel_cdclk_state cdclk_state;

 skl_sanitize_cdclk(dev_priv);

 if (dev_priv->cdclk.hw.cdclk != 0 &&
     dev_priv->cdclk.hw.vco != 0) {




  if (dev_priv->skl_preferred_vco_freq == 0)
   skl_set_preferred_cdclk_vco(dev_priv,
          dev_priv->cdclk.hw.vco);
  return;
 }

 cdclk_state = dev_priv->cdclk.hw;

 cdclk_state.vco = dev_priv->skl_preferred_vco_freq;
 if (cdclk_state.vco == 0)
  cdclk_state.vco = 8100000;
 cdclk_state.cdclk = skl_calc_cdclk(0, cdclk_state.vco);
 cdclk_state.voltage_level = skl_calc_voltage_level(cdclk_state.cdclk);

 skl_set_cdclk(dev_priv, &cdclk_state, INVALID_PIPE);
}
