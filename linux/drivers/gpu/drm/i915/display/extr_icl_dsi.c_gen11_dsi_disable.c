
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_dsi {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int MIPI_SEQ_BACKLIGHT_OFF ;
 struct intel_dsi* enc_to_intel_dsi (int *) ;
 int gen11_dsi_deconfigure_trancoder (struct intel_encoder*) ;
 int gen11_dsi_disable_io_power (struct intel_encoder*) ;
 int gen11_dsi_disable_port (struct intel_encoder*) ;
 int gen11_dsi_disable_transcoder (struct intel_encoder*) ;
 int gen11_dsi_powerdown_panel (struct intel_encoder*) ;
 int intel_dsi_vbt_exec_sequence (struct intel_dsi*,int ) ;
 int intel_panel_disable_backlight (struct drm_connector_state const*) ;

__attribute__((used)) static void gen11_dsi_disable(struct intel_encoder *encoder,
         const struct intel_crtc_state *old_crtc_state,
         const struct drm_connector_state *old_conn_state)
{
 struct intel_dsi *intel_dsi = enc_to_intel_dsi(&encoder->base);


 intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_OFF);
 intel_panel_disable_backlight(old_conn_state);


 gen11_dsi_disable_transcoder(encoder);


 gen11_dsi_powerdown_panel(encoder);


 gen11_dsi_deconfigure_trancoder(encoder);


 gen11_dsi_disable_port(encoder);


 gen11_dsi_disable_io_power(encoder);
}
