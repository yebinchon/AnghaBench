
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tegra_hdmi_audio_config {int aval; int cts; scalar_t__ n; } ;
struct TYPE_3__ {int channels; int sample_rate; } ;
struct tegra_hdmi {int audio_source; TYPE_2__* config; int pixel_clock; int dev; TYPE_1__ format; } ;
struct TYPE_4__ {scalar_t__ has_hda; scalar_t__ has_hbr; } ;


 int ACR_ENABLE ;
 int ACR_SUBPACK_CTS (int ) ;
 int ACR_SUBPACK_N (scalar_t__) ;
 int AUDIO_CNTRL0_ERROR_TOLERANCE (int) ;
 int AUDIO_CNTRL0_FRAMES_PER_BLOCK (int) ;
 int AUDIO_CNTRL0_SOURCE_SELECT_AUTO ;
 int AUDIO_CNTRL0_SOURCE_SELECT_SPDIF ;
 int AUDIO_N_GENERATE_ALTERNATE ;
 int AUDIO_N_RESETF ;
 int AUDIO_N_VALUE (scalar_t__) ;
 int EINVAL ;

 int HDMI_NV_PDISP_AUDIO_CNTRL0 ;
 int HDMI_NV_PDISP_AUDIO_N ;
 int HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_HIGH ;
 int HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_LOW ;
 int HDMI_NV_PDISP_HDMI_ACR_CTRL ;
 int HDMI_NV_PDISP_HDMI_SPARE ;
 int HDMI_NV_PDISP_SOR_AUDIO_CNTRL0 ;
 int HDMI_NV_PDISP_SOR_AUDIO_SPARE0 ;
 int SOR_AUDIO_CNTRL0_INJECT_NULLSMPL ;
 int SOR_AUDIO_CNTRL0_SOURCE_SELECT_AUTO ;
 int SOR_AUDIO_CNTRL0_SOURCE_SELECT_HDAL ;
 int SOR_AUDIO_CNTRL0_SOURCE_SELECT_SPDIF ;
 int SOR_AUDIO_SPARE0_HBR_ENABLE ;
 int SPARE_CTS_RESET_VAL (int) ;
 int SPARE_FORCE_SW_CTS ;
 int SPARE_HW_CTS ;

 int dev_dbg (int ,char*,int ,scalar_t__,int ,int ) ;
 int dev_err (int ,char*,int ,int ) ;
 int tegra_hdmi_get_audio_config (int ,int ,struct tegra_hdmi_audio_config*) ;
 int tegra_hdmi_readl (struct tegra_hdmi*,int ) ;
 int tegra_hdmi_setup_audio_fs_tables (struct tegra_hdmi*) ;
 int tegra_hdmi_write_aval (struct tegra_hdmi*,int ) ;
 int tegra_hdmi_writel (struct tegra_hdmi*,int,int ) ;

__attribute__((used)) static int tegra_hdmi_setup_audio(struct tegra_hdmi *hdmi)
{
 struct tegra_hdmi_audio_config config;
 u32 source, value;
 int err;

 switch (hdmi->audio_source) {
 case 129:
  if (hdmi->config->has_hda)
   source = SOR_AUDIO_CNTRL0_SOURCE_SELECT_HDAL;
  else
   return -EINVAL;

  break;

 case 128:
  if (hdmi->config->has_hda)
   source = SOR_AUDIO_CNTRL0_SOURCE_SELECT_SPDIF;
  else
   source = AUDIO_CNTRL0_SOURCE_SELECT_SPDIF;
  break;

 default:
  if (hdmi->config->has_hda)
   source = SOR_AUDIO_CNTRL0_SOURCE_SELECT_AUTO;
  else
   source = AUDIO_CNTRL0_SOURCE_SELECT_AUTO;
  break;
 }
 if (hdmi->config->has_hda) {
  if (hdmi->format.channels == 2)
   value = SOR_AUDIO_CNTRL0_INJECT_NULLSMPL;
  else
   value = 0;

  value |= source;

  tegra_hdmi_writel(hdmi, value, HDMI_NV_PDISP_SOR_AUDIO_CNTRL0);
 }





 value = AUDIO_CNTRL0_FRAMES_PER_BLOCK(0xc0) |
  AUDIO_CNTRL0_ERROR_TOLERANCE(6);

 if (!hdmi->config->has_hda)
  value |= source;

 tegra_hdmi_writel(hdmi, value, HDMI_NV_PDISP_AUDIO_CNTRL0);




 if (hdmi->config->has_hbr) {
  value = tegra_hdmi_readl(hdmi, HDMI_NV_PDISP_SOR_AUDIO_SPARE0);
  value |= SOR_AUDIO_SPARE0_HBR_ENABLE;
  tegra_hdmi_writel(hdmi, value, HDMI_NV_PDISP_SOR_AUDIO_SPARE0);
 }

 err = tegra_hdmi_get_audio_config(hdmi->format.sample_rate,
       hdmi->pixel_clock, &config);
 if (err < 0) {
  dev_err(hdmi->dev,
   "cannot set audio to %u Hz at %u Hz pixel clock\n",
   hdmi->format.sample_rate, hdmi->pixel_clock);
  return err;
 }

 dev_dbg(hdmi->dev, "audio: pixclk=%u, n=%u, cts=%u, aval=%u\n",
  hdmi->pixel_clock, config.n, config.cts, config.aval);

 tegra_hdmi_writel(hdmi, 0, HDMI_NV_PDISP_HDMI_ACR_CTRL);

 value = AUDIO_N_RESETF | AUDIO_N_GENERATE_ALTERNATE |
  AUDIO_N_VALUE(config.n - 1);
 tegra_hdmi_writel(hdmi, value, HDMI_NV_PDISP_AUDIO_N);

 tegra_hdmi_writel(hdmi, ACR_SUBPACK_N(config.n) | ACR_ENABLE,
     HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_HIGH);

 tegra_hdmi_writel(hdmi, ACR_SUBPACK_CTS(config.cts),
     HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_LOW);

 value = SPARE_HW_CTS | SPARE_FORCE_SW_CTS | SPARE_CTS_RESET_VAL(1);
 tegra_hdmi_writel(hdmi, value, HDMI_NV_PDISP_HDMI_SPARE);

 value = tegra_hdmi_readl(hdmi, HDMI_NV_PDISP_AUDIO_N);
 value &= ~AUDIO_N_RESETF;
 tegra_hdmi_writel(hdmi, value, HDMI_NV_PDISP_AUDIO_N);

 if (hdmi->config->has_hda)
  tegra_hdmi_write_aval(hdmi, config.aval);

 tegra_hdmi_setup_audio_fs_tables(hdmi);

 return 0;
}
