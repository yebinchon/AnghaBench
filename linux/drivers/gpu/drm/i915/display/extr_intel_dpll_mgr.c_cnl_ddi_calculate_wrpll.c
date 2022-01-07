
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct skl_wrpll_params {int dummy; } ;
struct TYPE_4__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {int port_clock; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int ARRAY_SIZE (int const*) ;
 int U32_MAX ;
 int abs (int) ;
 int cnl_hdmi_pll_ref_clock (struct drm_i915_private*) ;
 int cnl_wrpll_get_multipliers (int,int*,int*,int*) ;
 int cnl_wrpll_params_populate (struct skl_wrpll_params*,int,int,int,int,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool
cnl_ddi_calculate_wrpll(struct intel_crtc_state *crtc_state,
   struct skl_wrpll_params *wrpll_params)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);
 u32 afe_clock = crtc_state->port_clock * 5;
 u32 ref_clock;
 u32 dco_min = 7998000;
 u32 dco_max = 10000000;
 u32 dco_mid = (dco_min + dco_max) / 2;
 static const int dividers[] = { 2, 4, 6, 8, 10, 12, 14, 16,
      18, 20, 24, 28, 30, 32, 36, 40,
      42, 44, 48, 50, 52, 54, 56, 60,
      64, 66, 68, 70, 72, 76, 78, 80,
      84, 88, 90, 92, 96, 98, 100, 102,
       3, 5, 7, 9, 15, 21 };
 u32 dco, best_dco = 0, dco_centrality = 0;
 u32 best_dco_centrality = U32_MAX;
 int d, best_div = 0, pdiv = 0, qdiv = 0, kdiv = 0;

 for (d = 0; d < ARRAY_SIZE(dividers); d++) {
  dco = afe_clock * dividers[d];

  if ((dco <= dco_max) && (dco >= dco_min)) {
   dco_centrality = abs(dco - dco_mid);

   if (dco_centrality < best_dco_centrality) {
    best_dco_centrality = dco_centrality;
    best_div = dividers[d];
    best_dco = dco;
   }
  }
 }

 if (best_div == 0)
  return 0;

 cnl_wrpll_get_multipliers(best_div, &pdiv, &qdiv, &kdiv);

 ref_clock = cnl_hdmi_pll_ref_clock(dev_priv);

 cnl_wrpll_params_populate(wrpll_params, best_dco, ref_clock,
      pdiv, qdiv, kdiv);

 return 1;
}
