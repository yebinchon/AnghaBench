
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sor {int dummy; } ;


 int SOR_AUDIO_HDA_PRESENSE ;
 int tegra_sor_writel (struct tegra_sor*,int ,int ) ;

__attribute__((used)) static void tegra_sor_audio_unprepare(struct tegra_sor *sor)
{
 tegra_sor_writel(sor, 0, SOR_AUDIO_HDA_PRESENSE);
}
