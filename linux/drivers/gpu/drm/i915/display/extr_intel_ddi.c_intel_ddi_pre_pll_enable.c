
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_digital_port {scalar_t__ tc_mode; } ;
struct intel_crtc_state {int lane_lat_optim_mask; int lane_count; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef enum phy { ____Placeholder_phy } phy ;


 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 scalar_t__ TC_PORT_TBT_ALT ;
 int bxt_ddi_phy_set_lane_optim_mask (struct intel_encoder*,int ) ;
 struct intel_digital_port* enc_to_dig_port (TYPE_1__*) ;
 scalar_t__ intel_crtc_has_dp_encoder (struct intel_crtc_state const*) ;
 int intel_ddi_main_link_aux_domain (struct intel_digital_port*) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int intel_phy_is_tc (struct drm_i915_private*,int) ;
 int intel_port_to_phy (struct drm_i915_private*,int ) ;
 int intel_tc_port_get_link (struct intel_digital_port*,int ) ;
 int intel_tc_port_set_fia_lane_count (struct intel_digital_port*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void
intel_ddi_pre_pll_enable(struct intel_encoder *encoder,
    const struct intel_crtc_state *crtc_state,
    const struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
 enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 bool is_tc_port = intel_phy_is_tc(dev_priv, phy);

 if (is_tc_port)
  intel_tc_port_get_link(dig_port, crtc_state->lane_count);

 if (intel_crtc_has_dp_encoder(crtc_state) || is_tc_port)
  intel_display_power_get(dev_priv,
     intel_ddi_main_link_aux_domain(dig_port));

 if (is_tc_port && dig_port->tc_mode != TC_PORT_TBT_ALT)




  intel_tc_port_set_fia_lane_count(dig_port, crtc_state->lane_count);
 else if (IS_GEN9_LP(dev_priv))
  bxt_ddi_phy_set_lane_optim_mask(encoder,
      crtc_state->lane_lat_optim_mask);
}
