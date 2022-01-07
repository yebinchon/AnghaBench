
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int gen11_dsi_config_phy_lanes_sequence (struct intel_encoder*) ;
 int gen11_dsi_configure_transcoder (struct intel_encoder*,struct intel_crtc_state const*) ;
 int gen11_dsi_enable_ddi_buffer (struct intel_encoder*) ;
 int gen11_dsi_gate_clocks (struct intel_encoder*) ;
 int gen11_dsi_power_up_lanes (struct intel_encoder*) ;
 int gen11_dsi_setup_dphy_timings (struct intel_encoder*) ;
 int gen11_dsi_setup_timeouts (struct intel_encoder*) ;
 int gen11_dsi_voltage_swing_program_seq (struct intel_encoder*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void
gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
         const struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);


 gen11_dsi_power_up_lanes(encoder);


 gen11_dsi_config_phy_lanes_sequence(encoder);


 gen11_dsi_voltage_swing_program_seq(encoder);


 gen11_dsi_enable_ddi_buffer(encoder);


 gen11_dsi_setup_dphy_timings(encoder);


 gen11_dsi_setup_timeouts(encoder);


 gen11_dsi_configure_transcoder(encoder, pipe_config);


 if (IS_GEN(dev_priv, 11))
  gen11_dsi_gate_clocks(encoder);
}
