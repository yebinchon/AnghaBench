
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_output {scalar_t__ panel; } ;
struct tegra_dsi {int dev; } ;
struct tegra_dc {int dummy; } ;
struct drm_encoder {int crtc; } ;


 int DC_DISP_DISP_WIN_OPTIONS ;
 int DSI_ENABLE ;
 int dev_dbg (int ,char*,int) ;
 int drm_panel_disable (scalar_t__) ;
 int drm_panel_unprepare (scalar_t__) ;
 struct tegra_output* encoder_to_output (struct drm_encoder*) ;
 int tegra_dc_commit (struct tegra_dc*) ;
 int tegra_dc_readl (struct tegra_dc*,int ) ;
 int tegra_dc_writel (struct tegra_dc*,int ,int ) ;
 int tegra_dsi_disable (struct tegra_dsi*) ;
 int tegra_dsi_soft_reset (struct tegra_dsi*) ;
 int tegra_dsi_unprepare (struct tegra_dsi*) ;
 int tegra_dsi_video_disable (struct tegra_dsi*) ;
 int tegra_dsi_wait_idle (struct tegra_dsi*,int) ;
 struct tegra_dsi* to_dsi (struct tegra_output*) ;
 struct tegra_dc* to_tegra_dc (int ) ;

__attribute__((used)) static void tegra_dsi_encoder_disable(struct drm_encoder *encoder)
{
 struct tegra_output *output = encoder_to_output(encoder);
 struct tegra_dc *dc = to_tegra_dc(encoder->crtc);
 struct tegra_dsi *dsi = to_dsi(output);
 u32 value;
 int err;

 if (output->panel)
  drm_panel_disable(output->panel);

 tegra_dsi_video_disable(dsi);





 if (dc) {
  value = tegra_dc_readl(dc, DC_DISP_DISP_WIN_OPTIONS);
  value &= ~DSI_ENABLE;
  tegra_dc_writel(dc, value, DC_DISP_DISP_WIN_OPTIONS);

  tegra_dc_commit(dc);
 }

 err = tegra_dsi_wait_idle(dsi, 100);
 if (err < 0)
  dev_dbg(dsi->dev, "failed to idle DSI: %d\n", err);

 tegra_dsi_soft_reset(dsi);

 if (output->panel)
  drm_panel_unprepare(output->panel);

 tegra_dsi_disable(dsi);

 tegra_dsi_unprepare(dsi);
}
