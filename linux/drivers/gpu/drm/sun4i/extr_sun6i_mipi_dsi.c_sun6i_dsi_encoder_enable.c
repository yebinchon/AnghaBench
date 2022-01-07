
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_configure_opts_mipi_dphy {int dummy; } ;
union phy_configure_opts {struct phy_configure_opts_mipi_dphy mipi_dphy; int member_0; } ;
typedef int u16 ;
struct sun6i_dsi {int panel; int dphy; int regs; int dev; struct mipi_dsi_device* device; } ;
struct mipi_dsi_device {int lanes; int format; } ;
struct drm_encoder {TYPE_2__* crtc; } ;
struct drm_display_mode {int clock; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DSI_START_HSC ;
 int DSI_START_HSD ;
 int IS_ERR (int ) ;
 int PHY_MODE_MIPI_DPHY ;
 int SUN6I_DSI_BASIC_CTL1_REG ;
 int SUN6I_DSI_BASIC_CTL1_VIDEO_FILL ;
 int SUN6I_DSI_BASIC_CTL1_VIDEO_MODE ;
 int SUN6I_DSI_BASIC_CTL1_VIDEO_PRECISION ;
 int SUN6I_DSI_BASIC_CTL1_VIDEO_ST_DELAY (int ) ;
 int drm_panel_enable (int ) ;
 int drm_panel_prepare (int ) ;
 struct sun6i_dsi* encoder_to_sun6i_dsi (struct drm_encoder*) ;
 int mipi_dsi_pixel_format_to_bpp (int ) ;
 int phy_configure (int ,union phy_configure_opts*) ;
 int phy_init (int ) ;
 int phy_mipi_dphy_get_default_config (int,int ,int ,struct phy_configure_opts_mipi_dphy*) ;
 int phy_power_on (int ) ;
 int phy_set_mode (int ,int ) ;
 int pm_runtime_get_sync (int ) ;
 int regmap_write (int ,int ,int) ;
 int sun6i_dsi_get_video_start_delay (struct sun6i_dsi*,struct drm_display_mode*) ;
 int sun6i_dsi_setup_burst (struct sun6i_dsi*,struct drm_display_mode*) ;
 int sun6i_dsi_setup_format (struct sun6i_dsi*,struct drm_display_mode*) ;
 int sun6i_dsi_setup_inst_loop (struct sun6i_dsi*,struct drm_display_mode*) ;
 int sun6i_dsi_setup_timings (struct sun6i_dsi*,struct drm_display_mode*) ;
 int sun6i_dsi_start (struct sun6i_dsi*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void sun6i_dsi_encoder_enable(struct drm_encoder *encoder)
{
 struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
 struct sun6i_dsi *dsi = encoder_to_sun6i_dsi(encoder);
 struct mipi_dsi_device *device = dsi->device;
 union phy_configure_opts opts = { 0 };
 struct phy_configure_opts_mipi_dphy *cfg = &opts.mipi_dphy;
 u16 delay;

 DRM_DEBUG_DRIVER("Enabling DSI output\n");

 pm_runtime_get_sync(dsi->dev);

 delay = sun6i_dsi_get_video_start_delay(dsi, mode);
 regmap_write(dsi->regs, SUN6I_DSI_BASIC_CTL1_REG,
       SUN6I_DSI_BASIC_CTL1_VIDEO_ST_DELAY(delay) |
       SUN6I_DSI_BASIC_CTL1_VIDEO_FILL |
       SUN6I_DSI_BASIC_CTL1_VIDEO_PRECISION |
       SUN6I_DSI_BASIC_CTL1_VIDEO_MODE);

 sun6i_dsi_setup_burst(dsi, mode);
 sun6i_dsi_setup_inst_loop(dsi, mode);
 sun6i_dsi_setup_format(dsi, mode);
 sun6i_dsi_setup_timings(dsi, mode);

 phy_init(dsi->dphy);

 phy_mipi_dphy_get_default_config(mode->clock * 1000,
      mipi_dsi_pixel_format_to_bpp(device->format),
      device->lanes, cfg);

 phy_set_mode(dsi->dphy, PHY_MODE_MIPI_DPHY);
 phy_configure(dsi->dphy, &opts);
 phy_power_on(dsi->dphy);

 if (!IS_ERR(dsi->panel))
  drm_panel_prepare(dsi->panel);
 if (!IS_ERR(dsi->panel))
  drm_panel_enable(dsi->panel);

 sun6i_dsi_start(dsi, DSI_START_HSC);

 udelay(1000);

 sun6i_dsi_start(dsi, DSI_START_HSD);
}
