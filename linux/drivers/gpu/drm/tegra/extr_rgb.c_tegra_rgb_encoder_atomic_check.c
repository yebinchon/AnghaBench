
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_rgb {int clk_parent; int clk; } ;
struct tegra_output {int dev; } ;
struct tegra_dc {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int clock; } ;
struct drm_crtc_state {TYPE_1__ mode; } ;
struct drm_connector_state {int crtc; } ;


 int clk_get_rate (int ) ;
 int dev_err (int ,char*,int) ;
 struct tegra_output* encoder_to_output (struct drm_encoder*) ;
 int tegra_dc_state_setup_clock (struct tegra_dc*,struct drm_crtc_state*,int ,unsigned long,unsigned int) ;
 struct tegra_rgb* to_rgb (struct tegra_output*) ;
 struct tegra_dc* to_tegra_dc (int ) ;

__attribute__((used)) static int
tegra_rgb_encoder_atomic_check(struct drm_encoder *encoder,
          struct drm_crtc_state *crtc_state,
          struct drm_connector_state *conn_state)
{
 struct tegra_output *output = encoder_to_output(encoder);
 struct tegra_dc *dc = to_tegra_dc(conn_state->crtc);
 unsigned long pclk = crtc_state->mode.clock * 1000;
 struct tegra_rgb *rgb = to_rgb(output);
 unsigned int div;
 int err;
 div = ((clk_get_rate(rgb->clk) * 2) / pclk) - 2;
 pclk = 0;

 err = tegra_dc_state_setup_clock(dc, crtc_state, rgb->clk_parent,
      pclk, div);
 if (err < 0) {
  dev_err(output->dev, "failed to setup CRTC state: %d\n", err);
  return err;
 }

 return err;
}
