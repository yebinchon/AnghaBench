
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_plane {int dummy; } ;
struct drm_plane_state {int crtc; } ;
struct drm_plane {int dummy; } ;


 int DC_WIN_WIN_OPTIONS ;
 int WIN_ENABLE ;
 int tegra_plane_readl (struct tegra_plane*,int ) ;
 int tegra_plane_writel (struct tegra_plane*,int ,int ) ;
 struct tegra_plane* to_tegra_plane (struct drm_plane*) ;

__attribute__((used)) static void tegra_plane_atomic_disable(struct drm_plane *plane,
           struct drm_plane_state *old_state)
{
 struct tegra_plane *p = to_tegra_plane(plane);
 u32 value;


 if (!old_state || !old_state->crtc)
  return;

 value = tegra_plane_readl(p, DC_WIN_WIN_OPTIONS);
 value &= ~WIN_ENABLE;
 tegra_plane_writel(p, value, DC_WIN_WIN_OPTIONS);
}
