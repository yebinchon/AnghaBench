
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_dsi {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int MIPI_SEQ_BACKLIGHT_ON ;
 struct intel_dsi* enc_to_intel_dsi (int *) ;
 int gen11_dsi_enable_port_and_phy (struct intel_encoder*,struct intel_crtc_state const*) ;
 int gen11_dsi_enable_transcoder (struct intel_encoder*) ;
 int gen11_dsi_map_pll (struct intel_encoder*,struct intel_crtc_state const*) ;
 int gen11_dsi_powerup_panel (struct intel_encoder*) ;
 int gen11_dsi_set_transcoder_timings (struct intel_encoder*,struct intel_crtc_state const*) ;
 int intel_dsi_vbt_exec_sequence (struct intel_dsi*,int ) ;
 int intel_panel_enable_backlight (struct intel_crtc_state const*,struct drm_connector_state const*) ;

__attribute__((used)) static void gen11_dsi_pre_enable(struct intel_encoder *encoder,
     const struct intel_crtc_state *pipe_config,
     const struct drm_connector_state *conn_state)
{
 struct intel_dsi *intel_dsi = enc_to_intel_dsi(&encoder->base);


 gen11_dsi_map_pll(encoder, pipe_config);


 gen11_dsi_enable_port_and_phy(encoder, pipe_config);


 gen11_dsi_powerup_panel(encoder);


 gen11_dsi_set_transcoder_timings(encoder, pipe_config);


 gen11_dsi_enable_transcoder(encoder);


 intel_panel_enable_backlight(pipe_config, conn_state);
 intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_ON);
}
