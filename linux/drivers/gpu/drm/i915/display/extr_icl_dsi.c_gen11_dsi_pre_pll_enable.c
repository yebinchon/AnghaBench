
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int gen11_dsi_enable_io_power (struct intel_encoder*) ;
 int gen11_dsi_program_esc_clk_div (struct intel_encoder*) ;

__attribute__((used)) static void gen11_dsi_pre_pll_enable(struct intel_encoder *encoder,
         const struct intel_crtc_state *pipe_config,
         const struct drm_connector_state *conn_state)
{

 gen11_dsi_enable_io_power(encoder);


 gen11_dsi_program_esc_clk_div(encoder);
}
