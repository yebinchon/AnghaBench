
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_dpll_hw_state {int dummy; } ;
struct intel_crtc_state {int port_clock; int shared_dpll; struct intel_dpll_hw_state dpll_hw_state; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum phy { ____Placeholder_phy } phy ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;


 int DPLL_ID_ICL_TBTPLL ;
 int cnl_calc_wrpll_link (struct drm_i915_private*,struct intel_dpll_hw_state*) ;
 int ddi_dotclock_get (struct intel_crtc_state*) ;
 int icl_calc_mg_pll_link (struct drm_i915_private*,struct intel_dpll_hw_state*) ;
 int icl_calc_tbt_pll_link (struct drm_i915_private*,int) ;
 int intel_get_shared_dpll_id (struct drm_i915_private*,int ) ;
 scalar_t__ intel_phy_is_combo (struct drm_i915_private*,int) ;
 int intel_port_to_phy (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void icl_ddi_clock_get(struct intel_encoder *encoder,
         struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_dpll_hw_state *pll_state = &pipe_config->dpll_hw_state;
 enum port port = encoder->port;
 enum phy phy = intel_port_to_phy(dev_priv, port);
 int link_clock;

 if (intel_phy_is_combo(dev_priv, phy)) {
  link_clock = cnl_calc_wrpll_link(dev_priv, pll_state);
 } else {
  enum intel_dpll_id pll_id = intel_get_shared_dpll_id(dev_priv,
      pipe_config->shared_dpll);

  if (pll_id == DPLL_ID_ICL_TBTPLL)
   link_clock = icl_calc_tbt_pll_link(dev_priv, port);
  else
   link_clock = icl_calc_mg_pll_link(dev_priv, pll_state);
 }

 pipe_config->port_clock = link_clock;

 ddi_dotclock_get(pipe_config);
}
