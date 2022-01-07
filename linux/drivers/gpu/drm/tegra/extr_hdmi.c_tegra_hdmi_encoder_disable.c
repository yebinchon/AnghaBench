
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_output {int dummy; } ;
struct tegra_hdmi {int dev; scalar_t__ stereo; int dvi; } ;
struct tegra_dc {int dummy; } ;
struct drm_encoder {int crtc; } ;


 int DC_DISP_DISP_WIN_OPTIONS ;
 int HDMI_ENABLE ;
 int HDMI_NV_PDISP_INT_ENABLE ;
 int HDMI_NV_PDISP_INT_MASK ;
 struct tegra_output* encoder_to_output (struct drm_encoder*) ;
 int pm_runtime_put (int ) ;
 int tegra_dc_commit (struct tegra_dc*) ;
 int tegra_dc_readl (struct tegra_dc*,int ) ;
 int tegra_dc_writel (struct tegra_dc*,int ,int ) ;
 int tegra_hdmi_disable_audio (struct tegra_hdmi*) ;
 int tegra_hdmi_disable_audio_infoframe (struct tegra_hdmi*) ;
 int tegra_hdmi_disable_avi_infoframe (struct tegra_hdmi*) ;
 int tegra_hdmi_disable_stereo_infoframe (struct tegra_hdmi*) ;
 int tegra_hdmi_writel (struct tegra_hdmi*,int ,int ) ;
 struct tegra_hdmi* to_hdmi (struct tegra_output*) ;
 struct tegra_dc* to_tegra_dc (int ) ;

__attribute__((used)) static void tegra_hdmi_encoder_disable(struct drm_encoder *encoder)
{
 struct tegra_output *output = encoder_to_output(encoder);
 struct tegra_dc *dc = to_tegra_dc(encoder->crtc);
 struct tegra_hdmi *hdmi = to_hdmi(output);
 u32 value;





 if (dc) {
  value = tegra_dc_readl(dc, DC_DISP_DISP_WIN_OPTIONS);
  value &= ~HDMI_ENABLE;
  tegra_dc_writel(dc, value, DC_DISP_DISP_WIN_OPTIONS);

  tegra_dc_commit(dc);
 }

 if (!hdmi->dvi) {
  if (hdmi->stereo)
   tegra_hdmi_disable_stereo_infoframe(hdmi);

  tegra_hdmi_disable_audio_infoframe(hdmi);
  tegra_hdmi_disable_avi_infoframe(hdmi);
  tegra_hdmi_disable_audio(hdmi);
 }

 tegra_hdmi_writel(hdmi, 0, HDMI_NV_PDISP_INT_ENABLE);
 tegra_hdmi_writel(hdmi, 0, HDMI_NV_PDISP_INT_MASK);

 pm_runtime_put(hdmi->dev);
}
