
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_fb_helper {unsigned int preferred_bpp; int client; } ;
struct TYPE_2__ {unsigned int preferred_depth; } ;
struct drm_device {int dev; TYPE_1__ mode_config; int fb_helper; } ;


 int DRM_DEV_DEBUG (int ,char*,int) ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN (int ,char*) ;
 int drm_client_init (struct drm_device*,int *,char*,int *) ;
 int drm_client_register (int *) ;
 int drm_fbdev_client_funcs ;
 int drm_fbdev_client_hotplug (int *) ;
 int drm_fbdev_emulation ;
 int kfree (struct drm_fb_helper*) ;
 struct drm_fb_helper* kzalloc (int,int ) ;

int drm_fbdev_generic_setup(struct drm_device *dev, unsigned int preferred_bpp)
{
 struct drm_fb_helper *fb_helper;
 int ret;

 WARN(dev->fb_helper, "fb_helper is already set!\n");

 if (!drm_fbdev_emulation)
  return 0;

 fb_helper = kzalloc(sizeof(*fb_helper), GFP_KERNEL);
 if (!fb_helper)
  return -ENOMEM;

 ret = drm_client_init(dev, &fb_helper->client, "fbdev", &drm_fbdev_client_funcs);
 if (ret) {
  kfree(fb_helper);
  DRM_DEV_ERROR(dev->dev, "Failed to register client: %d\n", ret);
  return ret;
 }

 if (!preferred_bpp)
  preferred_bpp = dev->mode_config.preferred_depth;
 if (!preferred_bpp)
  preferred_bpp = 32;
 fb_helper->preferred_bpp = preferred_bpp;

 ret = drm_fbdev_client_hotplug(&fb_helper->client);
 if (ret)
  DRM_DEV_DEBUG(dev->dev, "client hotplug ret=%d\n", ret);

 drm_client_register(&fb_helper->client);

 return 0;
}
