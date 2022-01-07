
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {scalar_t__ tc_mode; int ddi_io_power_domain; struct intel_dp dp; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef enum phy { ____Placeholder_phy } phy ;


 int DRM_MODE_DPMS_OFF ;
 int INTEL_OUTPUT_DP_MST ;
 scalar_t__ TC_PORT_TBT_ALT ;
 struct intel_digital_port* enc_to_dig_port (TYPE_1__*) ;
 int intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 int intel_ddi_clk_disable (struct intel_encoder*) ;
 int intel_ddi_disable_pipe_clock (struct intel_crtc_state const*) ;
 int intel_disable_ddi_buf (struct intel_encoder*,struct intel_crtc_state const*) ;
 int intel_display_power_put_unchecked (struct drm_i915_private*,int ) ;
 int intel_dp_sink_dpms (struct intel_dp*,int ) ;
 int intel_edp_panel_off (struct intel_dp*) ;
 int intel_edp_panel_vdd_on (struct intel_dp*) ;
 int intel_phy_is_tc (struct drm_i915_private*,int) ;
 int intel_port_to_phy (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_ddi_post_disable_dp(struct intel_encoder *encoder,
          const struct intel_crtc_state *old_crtc_state,
          const struct drm_connector_state *old_conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
 struct intel_dp *intel_dp = &dig_port->dp;
 bool is_mst = intel_crtc_has_type(old_crtc_state,
       INTEL_OUTPUT_DP_MST);
 enum phy phy = intel_port_to_phy(dev_priv, encoder->port);

 if (!is_mst) {
  intel_ddi_disable_pipe_clock(old_crtc_state);




  intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_OFF);
 }

 intel_disable_ddi_buf(encoder, old_crtc_state);

 intel_edp_panel_vdd_on(intel_dp);
 intel_edp_panel_off(intel_dp);

 if (!intel_phy_is_tc(dev_priv, phy) ||
     dig_port->tc_mode != TC_PORT_TBT_ALT)
  intel_display_power_put_unchecked(dev_priv,
        dig_port->ddi_io_power_domain);

 intel_ddi_clk_disable(encoder);
}
