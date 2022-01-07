
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_cdclk_state {int cdclk; int voltage_level; scalar_t__ vco; int bypass; } ;
struct TYPE_2__ {struct intel_cdclk_state hw; } ;
struct drm_i915_private {TYPE_1__ cdclk; } ;


 int INVALID_PIPE ;
 int bxt_calc_voltage_level (int ) ;
 int bxt_set_cdclk (struct drm_i915_private*,struct intel_cdclk_state*,int ) ;

__attribute__((used)) static void bxt_uninit_cdclk(struct drm_i915_private *dev_priv)
{
 struct intel_cdclk_state cdclk_state = dev_priv->cdclk.hw;

 cdclk_state.cdclk = cdclk_state.bypass;
 cdclk_state.vco = 0;
 cdclk_state.voltage_level = bxt_calc_voltage_level(cdclk_state.cdclk);

 bxt_set_cdclk(dev_priv, &cdclk_state, INVALID_PIPE);
}
