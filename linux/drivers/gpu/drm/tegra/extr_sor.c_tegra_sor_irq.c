
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_sor {int format; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SOR_AUDIO_HDA_CODEC_SCRATCH0 ;
 int SOR_AUDIO_HDA_CODEC_SCRATCH0_FMT_MASK ;
 int SOR_AUDIO_HDA_CODEC_SCRATCH0_VALID ;
 int SOR_INT_CODEC_SCRATCH0 ;
 int SOR_INT_STATUS ;
 int tegra_hda_parse_format (unsigned int,int *) ;
 int tegra_sor_hdmi_audio_disable (struct tegra_sor*) ;
 int tegra_sor_hdmi_audio_enable (struct tegra_sor*) ;
 int tegra_sor_readl (struct tegra_sor*,int ) ;
 int tegra_sor_writel (struct tegra_sor*,int,int ) ;

__attribute__((used)) static irqreturn_t tegra_sor_irq(int irq, void *data)
{
 struct tegra_sor *sor = data;
 u32 value;

 value = tegra_sor_readl(sor, SOR_INT_STATUS);
 tegra_sor_writel(sor, value, SOR_INT_STATUS);

 if (value & SOR_INT_CODEC_SCRATCH0) {
  value = tegra_sor_readl(sor, SOR_AUDIO_HDA_CODEC_SCRATCH0);

  if (value & SOR_AUDIO_HDA_CODEC_SCRATCH0_VALID) {
   unsigned int format;

   format = value & SOR_AUDIO_HDA_CODEC_SCRATCH0_FMT_MASK;

   tegra_hda_parse_format(format, &sor->format);

   tegra_sor_hdmi_audio_enable(sor);
  } else {
   tegra_sor_hdmi_audio_disable(sor);
  }
 }

 return IRQ_HANDLED;
}
