
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_sor {int dummy; } ;


 int INFOFRAME_CTRL_ENABLE ;
 int SOR_HDMI_AUDIO_INFOFRAME_CTRL ;
 int tegra_sor_readl (struct tegra_sor*,int ) ;
 int tegra_sor_writel (struct tegra_sor*,int ,int ) ;

__attribute__((used)) static void tegra_sor_hdmi_disable_audio_infoframe(struct tegra_sor *sor)
{
 u32 value;

 value = tegra_sor_readl(sor, SOR_HDMI_AUDIO_INFOFRAME_CTRL);
 value &= ~INFOFRAME_CTRL_ENABLE;
 tegra_sor_writel(sor, value, SOR_HDMI_AUDIO_INFOFRAME_CTRL);
}
