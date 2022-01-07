
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_plane_state {int dummy; } ;
struct tegra_plane {int dummy; } ;


 int tegra_plane_setup_opacity (struct tegra_plane*,struct tegra_plane_state*) ;
 int tegra_plane_setup_transparency (struct tegra_plane*,struct tegra_plane_state*) ;

int tegra_plane_setup_legacy_state(struct tegra_plane *tegra,
       struct tegra_plane_state *state)
{
 int err;

 err = tegra_plane_setup_opacity(tegra, state);
 if (err < 0)
  return err;

 err = tegra_plane_setup_transparency(tegra, state);
 if (err < 0)
  return err;

 return 0;
}
