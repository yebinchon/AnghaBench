
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int port; } ;
struct intel_crtc {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct intel_atomic_state {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum phy { ____Placeholder_phy } phy ;


 int MISSING_CASE (int) ;
 int icl_get_combo_phy_dpll (struct intel_atomic_state*,struct intel_crtc*,struct intel_encoder*) ;
 int icl_get_tc_phy_dplls (struct intel_atomic_state*,struct intel_crtc*,struct intel_encoder*) ;
 scalar_t__ intel_phy_is_combo (struct drm_i915_private*,int) ;
 scalar_t__ intel_phy_is_tc (struct drm_i915_private*,int) ;
 int intel_port_to_phy (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool icl_get_dplls(struct intel_atomic_state *state,
     struct intel_crtc *crtc,
     struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 enum phy phy = intel_port_to_phy(dev_priv, encoder->port);

 if (intel_phy_is_combo(dev_priv, phy))
  return icl_get_combo_phy_dpll(state, crtc, encoder);
 else if (intel_phy_is_tc(dev_priv, phy))
  return icl_get_tc_phy_dplls(state, crtc, encoder);

 MISSING_CASE(phy);

 return 0;
}
