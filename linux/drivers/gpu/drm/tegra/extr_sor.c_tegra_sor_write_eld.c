
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t* eld; } ;
struct TYPE_4__ {TYPE_1__ connector; } ;
struct tegra_sor {TYPE_2__ output; } ;


 int SOR_AUDIO_HDA_ELD_BUFWR ;
 size_t drm_eld_size (size_t*) ;
 int tegra_sor_writel (struct tegra_sor*,size_t,int ) ;

__attribute__((used)) static void tegra_sor_write_eld(struct tegra_sor *sor)
{
 size_t length = drm_eld_size(sor->output.connector.eld), i;

 for (i = 0; i < length; i++)
  tegra_sor_writel(sor, i << 8 | sor->output.connector.eld[i],
     SOR_AUDIO_HDA_ELD_BUFWR);







 for (i = length; i < 96; i++)
  tegra_sor_writel(sor, i << 8 | 0, SOR_AUDIO_HDA_ELD_BUFWR);
}
