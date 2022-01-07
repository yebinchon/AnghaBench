
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_plane {int dummy; } ;
struct tegra_dc {int dummy; } ;


 int tegra_shared_plane_set_owner (struct tegra_plane*,int *) ;

__attribute__((used)) static void tegra_dc_remove_shared_plane(struct tegra_dc *dc,
      struct tegra_plane *plane)
{
 tegra_shared_plane_set_owner(plane, ((void*)0));
}
