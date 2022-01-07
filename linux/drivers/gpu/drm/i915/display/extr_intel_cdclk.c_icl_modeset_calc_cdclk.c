
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int ref; int vco; int cdclk; int voltage_level; } ;
struct TYPE_6__ {int force_min_cdclk; TYPE_2__ logical; TYPE_2__ actual; } ;
struct TYPE_4__ {int dev; } ;
struct intel_atomic_state {TYPE_3__ cdclk; int active_crtcs; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int cnl_compute_min_voltage_level (struct intel_atomic_state*) ;
 int icl_calc_cdclk (int,unsigned int) ;
 int icl_calc_cdclk_pll_vco (struct drm_i915_private*,int) ;
 int icl_calc_voltage_level (struct drm_i915_private*,int) ;
 int intel_compute_min_cdclk (struct intel_atomic_state*) ;
 int max (int ,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static int icl_modeset_calc_cdclk(struct intel_atomic_state *state)
{
 struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 unsigned int ref = state->cdclk.logical.ref;
 int min_cdclk, cdclk, vco;

 min_cdclk = intel_compute_min_cdclk(state);
 if (min_cdclk < 0)
  return min_cdclk;

 cdclk = icl_calc_cdclk(min_cdclk, ref);
 vco = icl_calc_cdclk_pll_vco(dev_priv, cdclk);

 state->cdclk.logical.vco = vco;
 state->cdclk.logical.cdclk = cdclk;
 state->cdclk.logical.voltage_level =
  max(icl_calc_voltage_level(dev_priv, cdclk),
      cnl_compute_min_voltage_level(state));

 if (!state->active_crtcs) {
  cdclk = icl_calc_cdclk(state->cdclk.force_min_cdclk, ref);
  vco = icl_calc_cdclk_pll_vco(dev_priv, cdclk);

  state->cdclk.actual.vco = vco;
  state->cdclk.actual.cdclk = cdclk;
  state->cdclk.actual.voltage_level =
   icl_calc_voltage_level(dev_priv, cdclk);
 } else {
  state->cdclk.actual = state->cdclk.logical;
 }

 return 0;
}
