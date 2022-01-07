
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_plane_state {int format; int opaque; } ;
struct tegra_plane {int dummy; } ;






 int tegra_plane_format_get_alpha (int,unsigned int*) ;

__attribute__((used)) static int tegra_plane_setup_opacity(struct tegra_plane *tegra,
         struct tegra_plane_state *state)
{
 unsigned int format;
 int err;

 switch (state->format) {
 case 130:
 case 131:
 case 128:
 case 129:
  state->opaque = 0;
  break;

 default:
  err = tegra_plane_format_get_alpha(state->format, &format);
  if (err < 0)
   return err;

  state->format = format;
  state->opaque = 1;
  break;
 }

 return 0;
}
