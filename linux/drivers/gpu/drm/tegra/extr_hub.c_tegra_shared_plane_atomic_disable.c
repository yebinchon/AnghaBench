
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_plane {struct tegra_dc* dc; } ;
struct tegra_dc {int dev; } ;
struct drm_plane_state {int crtc; } ;
struct drm_plane {int dummy; } ;


 int DC_WIN_WIN_OPTIONS ;
 scalar_t__ WARN_ON (int ) ;
 int WIN_ENABLE ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int tegra_dc_remove_shared_plane (struct tegra_dc*,struct tegra_plane*) ;
 int tegra_plane_readl (struct tegra_plane*,int ) ;
 int tegra_plane_writel (struct tegra_plane*,int ,int ) ;
 struct tegra_dc* to_tegra_dc (int ) ;
 struct tegra_plane* to_tegra_plane (struct drm_plane*) ;

__attribute__((used)) static void tegra_shared_plane_atomic_disable(struct drm_plane *plane,
           struct drm_plane_state *old_state)
{
 struct tegra_plane *p = to_tegra_plane(plane);
 struct tegra_dc *dc;
 u32 value;


 if (!old_state || !old_state->crtc)
  return;

 dc = to_tegra_dc(old_state->crtc);






 if (WARN_ON(p->dc == ((void*)0)))
  p->dc = dc;

 pm_runtime_get_sync(dc->dev);

 value = tegra_plane_readl(p, DC_WIN_WIN_OPTIONS);
 value &= ~WIN_ENABLE;
 tegra_plane_writel(p, value, DC_WIN_WIN_OPTIONS);

 tegra_dc_remove_shared_plane(dc, p);

 pm_runtime_put(dc->dev);
}
