
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vco; int cdclk; void* voltage_level; } ;
struct TYPE_6__ {int force_min_cdclk; TYPE_2__ logical; TYPE_2__ actual; } ;
struct TYPE_4__ {int dev; } ;
struct intel_atomic_state {TYPE_3__ cdclk; int active_crtcs; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int bxt_calc_cdclk (int) ;
 void* bxt_calc_voltage_level (int) ;
 int bxt_de_pll_vco (struct drm_i915_private*,int) ;
 int glk_calc_cdclk (int) ;
 int glk_de_pll_vco (struct drm_i915_private*,int) ;
 int intel_compute_min_cdclk (struct intel_atomic_state*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static int bxt_modeset_calc_cdclk(struct intel_atomic_state *state)
{
 struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 int min_cdclk, cdclk, vco;

 min_cdclk = intel_compute_min_cdclk(state);
 if (min_cdclk < 0)
  return min_cdclk;

 if (IS_GEMINILAKE(dev_priv)) {
  cdclk = glk_calc_cdclk(min_cdclk);
  vco = glk_de_pll_vco(dev_priv, cdclk);
 } else {
  cdclk = bxt_calc_cdclk(min_cdclk);
  vco = bxt_de_pll_vco(dev_priv, cdclk);
 }

 state->cdclk.logical.vco = vco;
 state->cdclk.logical.cdclk = cdclk;
 state->cdclk.logical.voltage_level =
  bxt_calc_voltage_level(cdclk);

 if (!state->active_crtcs) {
  if (IS_GEMINILAKE(dev_priv)) {
   cdclk = glk_calc_cdclk(state->cdclk.force_min_cdclk);
   vco = glk_de_pll_vco(dev_priv, cdclk);
  } else {
   cdclk = bxt_calc_cdclk(state->cdclk.force_min_cdclk);
   vco = bxt_de_pll_vco(dev_priv, cdclk);
  }

  state->cdclk.actual.vco = vco;
  state->cdclk.actual.cdclk = cdclk;
  state->cdclk.actual.voltage_level =
   bxt_calc_voltage_level(cdclk);
 } else {
  state->cdclk.actual = state->cdclk.logical;
 }

 return 0;
}
