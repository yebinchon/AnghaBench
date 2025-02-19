
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_output {int dev; } ;
struct tegra_hdmi {int clk_parent; } ;
struct tegra_dc {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int clock; } ;
struct drm_crtc_state {TYPE_1__ mode; } ;
struct drm_connector_state {int crtc; } ;


 int dev_err (int ,char*,int) ;
 struct tegra_output* encoder_to_output (struct drm_encoder*) ;
 int tegra_dc_state_setup_clock (struct tegra_dc*,struct drm_crtc_state*,int ,unsigned long,int ) ;
 struct tegra_hdmi* to_hdmi (struct tegra_output*) ;
 struct tegra_dc* to_tegra_dc (int ) ;

__attribute__((used)) static int
tegra_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
    struct drm_crtc_state *crtc_state,
    struct drm_connector_state *conn_state)
{
 struct tegra_output *output = encoder_to_output(encoder);
 struct tegra_dc *dc = to_tegra_dc(conn_state->crtc);
 unsigned long pclk = crtc_state->mode.clock * 1000;
 struct tegra_hdmi *hdmi = to_hdmi(output);
 int err;

 err = tegra_dc_state_setup_clock(dc, crtc_state, hdmi->clk_parent,
      pclk, 0);
 if (err < 0) {
  dev_err(output->dev, "failed to setup CRTC state: %d\n", err);
  return err;
 }

 return err;
}
