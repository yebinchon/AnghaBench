
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_hdmi {int format; } ;
typedef int irqreturn_t ;


 int HDMI_NV_PDISP_INT_STATUS ;
 int HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH0 ;
 int INT_CODEC_SCRATCH0 ;
 int IRQ_HANDLED ;
 int SOR_AUDIO_HDA_CODEC_SCRATCH0_FMT_MASK ;
 int SOR_AUDIO_HDA_CODEC_SCRATCH0_VALID ;
 int tegra_hda_parse_format (unsigned int,int *) ;
 int tegra_hdmi_disable_audio (struct tegra_hdmi*) ;
 int tegra_hdmi_disable_audio_infoframe (struct tegra_hdmi*) ;
 int tegra_hdmi_enable_audio (struct tegra_hdmi*) ;
 int tegra_hdmi_enable_audio_infoframe (struct tegra_hdmi*) ;
 int tegra_hdmi_readl (struct tegra_hdmi*,int ) ;
 int tegra_hdmi_setup_audio (struct tegra_hdmi*) ;
 int tegra_hdmi_setup_audio_infoframe (struct tegra_hdmi*) ;
 int tegra_hdmi_writel (struct tegra_hdmi*,int,int ) ;

__attribute__((used)) static irqreturn_t tegra_hdmi_irq(int irq, void *data)
{
 struct tegra_hdmi *hdmi = data;
 u32 value;
 int err;

 value = tegra_hdmi_readl(hdmi, HDMI_NV_PDISP_INT_STATUS);
 tegra_hdmi_writel(hdmi, value, HDMI_NV_PDISP_INT_STATUS);

 if (value & INT_CODEC_SCRATCH0) {
  unsigned int format;
  u32 value;

  value = tegra_hdmi_readl(hdmi, HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH0);

  if (value & SOR_AUDIO_HDA_CODEC_SCRATCH0_VALID) {
   format = value & SOR_AUDIO_HDA_CODEC_SCRATCH0_FMT_MASK;

   tegra_hda_parse_format(format, &hdmi->format);

   err = tegra_hdmi_setup_audio(hdmi);
   if (err < 0) {
    tegra_hdmi_disable_audio_infoframe(hdmi);
    tegra_hdmi_disable_audio(hdmi);
   } else {
    tegra_hdmi_setup_audio_infoframe(hdmi);
    tegra_hdmi_enable_audio_infoframe(hdmi);
    tegra_hdmi_enable_audio(hdmi);
   }
  } else {
   tegra_hdmi_disable_audio_infoframe(hdmi);
   tegra_hdmi_disable_audio(hdmi);
  }
 }

 return IRQ_HANDLED;
}
