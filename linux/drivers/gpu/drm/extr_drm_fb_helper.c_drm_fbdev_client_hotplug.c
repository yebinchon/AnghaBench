
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_fb_helper {int * fbdev; int * dev; int preferred_bpp; scalar_t__ funcs; } ;
struct TYPE_2__ {int num_connector; } ;
struct drm_device {int dev; TYPE_1__ mode_config; scalar_t__ fb_helper; } ;
struct drm_client_dev {struct drm_device* dev; } ;


 int DRM_DEV_DEBUG (int ,char*) ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int drm_drv_uses_atomic_modeset (struct drm_device*) ;
 struct drm_fb_helper* drm_fb_helper_from_client (struct drm_client_dev*) ;
 int drm_fb_helper_generic_funcs ;
 int drm_fb_helper_hotplug_event (scalar_t__) ;
 int drm_fb_helper_init (struct drm_device*,struct drm_fb_helper*,int ) ;
 int drm_fb_helper_initial_config (struct drm_fb_helper*,int ) ;
 int drm_fb_helper_prepare (struct drm_device*,struct drm_fb_helper*,int *) ;
 int drm_fbdev_cleanup (struct drm_fb_helper*) ;
 int drm_helper_disable_unused_functions (struct drm_device*) ;

__attribute__((used)) static int drm_fbdev_client_hotplug(struct drm_client_dev *client)
{
 struct drm_fb_helper *fb_helper = drm_fb_helper_from_client(client);
 struct drm_device *dev = client->dev;
 int ret;


 if (!fb_helper->dev && fb_helper->funcs)
  return 0;

 if (dev->fb_helper)
  return drm_fb_helper_hotplug_event(dev->fb_helper);

 if (!dev->mode_config.num_connector) {
  DRM_DEV_DEBUG(dev->dev, "No connectors found, will not create framebuffer!\n");
  return 0;
 }

 drm_fb_helper_prepare(dev, fb_helper, &drm_fb_helper_generic_funcs);

 ret = drm_fb_helper_init(dev, fb_helper, 0);
 if (ret)
  goto err;

 if (!drm_drv_uses_atomic_modeset(dev))
  drm_helper_disable_unused_functions(dev);

 ret = drm_fb_helper_initial_config(fb_helper, fb_helper->preferred_bpp);
 if (ret)
  goto err_cleanup;

 return 0;

err_cleanup:
 drm_fbdev_cleanup(fb_helper);
err:
 fb_helper->dev = ((void*)0);
 fb_helper->fbdev = ((void*)0);

 DRM_DEV_ERROR(dev->dev, "fbdev: Failed to setup generic emulation (ret=%d)\n", ret);

 return ret;
}
