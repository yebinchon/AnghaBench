
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int chv_phy_pre_pll_enable (struct intel_encoder*,struct intel_crtc_state const*) ;
 int intel_hdmi_prepare (struct intel_encoder*,struct intel_crtc_state const*) ;

__attribute__((used)) static void chv_hdmi_pre_pll_enable(struct intel_encoder *encoder,
        const struct intel_crtc_state *pipe_config,
        const struct drm_connector_state *conn_state)
{
 intel_hdmi_prepare(encoder, pipe_config);

 chv_phy_pre_pll_enable(encoder, pipe_config);
}
