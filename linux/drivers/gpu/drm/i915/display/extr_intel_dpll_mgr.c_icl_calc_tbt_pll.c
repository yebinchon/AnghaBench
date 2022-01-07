
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
struct intel_crtc_state {TYPE_2__ base; } ;
struct TYPE_7__ {int ref; } ;
struct TYPE_8__ {TYPE_3__ hw; } ;
struct drm_i915_private {TYPE_4__ cdclk; } ;
struct TYPE_5__ {int dev; } ;


 struct skl_wrpll_params icl_tbt_pll_19_2MHz_values ;
 struct skl_wrpll_params icl_tbt_pll_24MHz_values ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
        struct skl_wrpll_params *pll_params)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);

 *pll_params = dev_priv->cdclk.hw.ref == 24000 ?
   icl_tbt_pll_24MHz_values : icl_tbt_pll_19_2MHz_values;
 return 1;
}
