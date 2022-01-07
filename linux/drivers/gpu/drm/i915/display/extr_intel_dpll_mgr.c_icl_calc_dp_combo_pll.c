
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct skl_wrpll_params {int dummy; } ;
struct TYPE_6__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {int port_clock; TYPE_2__ base; } ;
struct icl_combo_pll_params {int clock; struct skl_wrpll_params wrpll; } ;
struct TYPE_7__ {int ref; } ;
struct TYPE_8__ {TYPE_3__ hw; } ;
struct drm_i915_private {TYPE_4__ cdclk; } ;
struct TYPE_5__ {int dev; } ;


 int ARRAY_SIZE (struct icl_combo_pll_params*) ;
 int MISSING_CASE (int) ;
 struct icl_combo_pll_params* icl_dp_combo_pll_19_2MHz_values ;
 struct icl_combo_pll_params* icl_dp_combo_pll_24MHz_values ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
      struct skl_wrpll_params *pll_params)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);
 const struct icl_combo_pll_params *params =
  dev_priv->cdclk.hw.ref == 24000 ?
  icl_dp_combo_pll_24MHz_values :
  icl_dp_combo_pll_19_2MHz_values;
 int clock = crtc_state->port_clock;
 int i;

 for (i = 0; i < ARRAY_SIZE(icl_dp_combo_pll_24MHz_values); i++) {
  if (clock == params[i].clock) {
   *pll_params = params[i].wrpll;
   return 1;
  }
 }

 MISSING_CASE(clock);
 return 0;
}
