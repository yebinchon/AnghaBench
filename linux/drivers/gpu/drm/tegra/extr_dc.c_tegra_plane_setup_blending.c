
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_plane {int dummy; } ;
struct tegra_dc_window {scalar_t__ zpos; } ;


 int BLEND_FACTOR_DST_ALPHA_ZERO ;
 int BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC ;
 int BLEND_FACTOR_SRC_ALPHA_K2 ;
 int BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC ;
 int DC_WIN_BLEND_LAYER_CONTROL ;
 int DC_WIN_BLEND_MATCH_SELECT ;
 int DC_WIN_BLEND_NOMATCH_SELECT ;
 int K1 (int) ;
 int K2 (int) ;
 int WINDOW_LAYER_DEPTH (scalar_t__) ;
 int tegra_plane_writel (struct tegra_plane*,int,int ) ;

__attribute__((used)) static void tegra_plane_setup_blending(struct tegra_plane *plane,
           const struct tegra_dc_window *window)
{
 u32 value;

 value = BLEND_FACTOR_DST_ALPHA_ZERO | BLEND_FACTOR_SRC_ALPHA_K2 |
  BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC |
  BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC;
 tegra_plane_writel(plane, value, DC_WIN_BLEND_MATCH_SELECT);

 value = BLEND_FACTOR_DST_ALPHA_ZERO | BLEND_FACTOR_SRC_ALPHA_K2 |
  BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC |
  BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC;
 tegra_plane_writel(plane, value, DC_WIN_BLEND_NOMATCH_SELECT);

 value = K2(255) | K1(255) | WINDOW_LAYER_DEPTH(255 - window->zpos);
 tegra_plane_writel(plane, value, DC_WIN_BLEND_LAYER_CONTROL);
}
