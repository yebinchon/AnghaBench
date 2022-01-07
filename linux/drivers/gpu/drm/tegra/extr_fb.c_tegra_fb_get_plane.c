
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bo {int dummy; } ;
struct drm_framebuffer {int dummy; } ;


 int drm_gem_fb_get_obj (struct drm_framebuffer*,unsigned int) ;
 struct tegra_bo* to_tegra_bo (int ) ;

struct tegra_bo *tegra_fb_get_plane(struct drm_framebuffer *framebuffer,
        unsigned int index)
{
 return to_tegra_bo(drm_gem_fb_get_obj(framebuffer, index));
}
