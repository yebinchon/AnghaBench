
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_fb_helper_funcs {int dummy; } ;
struct drm_fb_helper {int dummy; } ;
struct TYPE_2__ {unsigned int preferred_depth; } ;
struct drm_device {int dev; TYPE_1__ mode_config; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int drm_drv_uses_atomic_modeset (struct drm_device*) ;
 int drm_fb_helper_fbdev_teardown (struct drm_device*) ;
 int drm_fb_helper_init (struct drm_device*,struct drm_fb_helper*,int ) ;
 int drm_fb_helper_initial_config (struct drm_fb_helper*,unsigned int) ;
 int drm_fb_helper_prepare (struct drm_device*,struct drm_fb_helper*,struct drm_fb_helper_funcs const*) ;
 int drm_helper_disable_unused_functions (struct drm_device*) ;

int drm_fb_helper_fbdev_setup(struct drm_device *dev,
         struct drm_fb_helper *fb_helper,
         const struct drm_fb_helper_funcs *funcs,
         unsigned int preferred_bpp,
         unsigned int max_conn_count)
{
 int ret;

 if (!preferred_bpp)
  preferred_bpp = dev->mode_config.preferred_depth;
 if (!preferred_bpp)
  preferred_bpp = 32;

 drm_fb_helper_prepare(dev, fb_helper, funcs);

 ret = drm_fb_helper_init(dev, fb_helper, 0);
 if (ret < 0) {
  DRM_DEV_ERROR(dev->dev, "fbdev: Failed to initialize (ret=%d)\n", ret);
  return ret;
 }

 if (!drm_drv_uses_atomic_modeset(dev))
  drm_helper_disable_unused_functions(dev);

 ret = drm_fb_helper_initial_config(fb_helper, preferred_bpp);
 if (ret < 0) {
  DRM_DEV_ERROR(dev->dev, "fbdev: Failed to set configuration (ret=%d)\n", ret);
  goto err_drm_fb_helper_fini;
 }

 return 0;

err_drm_fb_helper_fini:
 drm_fb_helper_fbdev_teardown(dev);

 return ret;
}
