
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dc {scalar_t__ rgb; } ;


 int tegra_output_exit (scalar_t__) ;

int tegra_dc_rgb_exit(struct tegra_dc *dc)
{
 if (dc->rgb)
  tegra_output_exit(dc->rgb);

 return 0;
}
