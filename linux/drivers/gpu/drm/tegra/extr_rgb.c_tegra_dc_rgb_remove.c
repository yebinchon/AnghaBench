
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dc {int * rgb; } ;


 int tegra_output_remove (int *) ;

int tegra_dc_rgb_remove(struct tegra_dc *dc)
{
 if (!dc->rgb)
  return 0;

 tegra_output_remove(dc->rgb);
 dc->rgb = ((void*)0);

 return 0;
}
