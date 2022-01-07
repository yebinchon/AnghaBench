
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_framebuffer* fb; } ;
struct exynos_drm_plane_state {TYPE_1__ base; } ;
struct exynos_drm_plane_config {int capabilities; } ;
struct drm_framebuffer {int modifier; struct drm_device* dev; } ;
struct drm_device {int dev; } ;


 int DRM_DEV_ERROR (int ,char*) ;


 int ENOTSUPP ;
 int EXYNOS_DRM_PLANE_CAP_TILE ;

__attribute__((used)) static int
exynos_drm_plane_check_format(const struct exynos_drm_plane_config *config,
         struct exynos_drm_plane_state *state)
{
 struct drm_framebuffer *fb = state->base.fb;
 struct drm_device *dev = fb->dev;

 switch (fb->modifier) {
 case 128:
  if (!(config->capabilities & EXYNOS_DRM_PLANE_CAP_TILE))
   return -ENOTSUPP;
  break;

 case 129:
  break;

 default:
  DRM_DEV_ERROR(dev->dev, "unsupported pixel format modifier");
  return -ENOTSUPP;
 }

 return 0;
}
