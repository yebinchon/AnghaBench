
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dc {int dummy; } ;
struct drm_plane_state {int crtc; } ;
struct drm_plane {int dummy; } ;


 int CURSOR_ENABLE ;
 int DC_DISP_DISP_WIN_OPTIONS ;
 int tegra_dc_readl (struct tegra_dc*,int ) ;
 int tegra_dc_writel (struct tegra_dc*,int ,int ) ;
 struct tegra_dc* to_tegra_dc (int ) ;

__attribute__((used)) static void tegra_cursor_atomic_disable(struct drm_plane *plane,
     struct drm_plane_state *old_state)
{
 struct tegra_dc *dc;
 u32 value;


 if (!old_state || !old_state->crtc)
  return;

 dc = to_tegra_dc(old_state->crtc);

 value = tegra_dc_readl(dc, DC_DISP_DISP_WIN_OPTIONS);
 value &= ~CURSOR_ENABLE;
 tegra_dc_writel(dc, value, DC_DISP_DISP_WIN_OPTIONS);
}
