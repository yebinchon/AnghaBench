
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bo {int flags; } ;
struct drm_framebuffer {int dummy; } ;


 int TEGRA_BO_BOTTOM_UP ;
 struct tegra_bo* tegra_fb_get_plane (struct drm_framebuffer*,int ) ;

bool tegra_fb_is_bottom_up(struct drm_framebuffer *framebuffer)
{
 struct tegra_bo *bo = tegra_fb_get_plane(framebuffer, 0);

 if (bo->flags & TEGRA_BO_BOTTOM_UP)
  return 1;

 return 0;
}
