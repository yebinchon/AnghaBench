
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_sor {int dummy; } ;


 int SOR_AUDIO_HDA_PRESENSE ;
 int SOR_AUDIO_HDA_PRESENSE_ELDV ;
 int SOR_AUDIO_HDA_PRESENSE_PD ;
 int tegra_sor_write_eld (struct tegra_sor*) ;
 int tegra_sor_writel (struct tegra_sor*,int,int ) ;

__attribute__((used)) static void tegra_sor_audio_prepare(struct tegra_sor *sor)
{
 u32 value;

 tegra_sor_write_eld(sor);

 value = SOR_AUDIO_HDA_PRESENSE_ELDV | SOR_AUDIO_HDA_PRESENSE_PD;
 tegra_sor_writel(sor, value, SOR_AUDIO_HDA_PRESENSE);
}
