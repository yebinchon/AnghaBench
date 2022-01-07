
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sor {int dummy; } ;


 int tegra_sor_hdmi_disable_audio_infoframe (struct tegra_sor*) ;

__attribute__((used)) static void tegra_sor_hdmi_audio_disable(struct tegra_sor *sor)
{
 tegra_sor_hdmi_disable_audio_infoframe(sor);
}
