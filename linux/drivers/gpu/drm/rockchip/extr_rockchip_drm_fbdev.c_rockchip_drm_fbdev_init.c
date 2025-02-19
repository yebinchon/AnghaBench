
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_fb_helper {int dummy; } ;
struct rockchip_drm_private {struct drm_fb_helper fbdev_helper; } ;
struct TYPE_2__ {int num_connector; int num_crtc; } ;
struct drm_device {int dev; TYPE_1__ mode_config; struct rockchip_drm_private* dev_private; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int EINVAL ;
 int PREFERRED_BPP ;
 int ROCKCHIP_MAX_CONNECTOR ;
 int drm_fb_helper_fini (struct drm_fb_helper*) ;
 int drm_fb_helper_init (struct drm_device*,struct drm_fb_helper*,int ) ;
 int drm_fb_helper_initial_config (struct drm_fb_helper*,int ) ;
 int drm_fb_helper_prepare (struct drm_device*,struct drm_fb_helper*,int *) ;
 int drm_fb_helper_single_add_all_connectors (struct drm_fb_helper*) ;
 int rockchip_drm_fb_helper_funcs ;

int rockchip_drm_fbdev_init(struct drm_device *dev)
{
 struct rockchip_drm_private *private = dev->dev_private;
 struct drm_fb_helper *helper;
 int ret;

 if (!dev->mode_config.num_crtc || !dev->mode_config.num_connector)
  return -EINVAL;

 helper = &private->fbdev_helper;

 drm_fb_helper_prepare(dev, helper, &rockchip_drm_fb_helper_funcs);

 ret = drm_fb_helper_init(dev, helper, ROCKCHIP_MAX_CONNECTOR);
 if (ret < 0) {
  DRM_DEV_ERROR(dev->dev,
         "Failed to initialize drm fb helper - %d.\n",
         ret);
  return ret;
 }

 ret = drm_fb_helper_single_add_all_connectors(helper);
 if (ret < 0) {
  DRM_DEV_ERROR(dev->dev,
         "Failed to add connectors - %d.\n", ret);
  goto err_drm_fb_helper_fini;
 }

 ret = drm_fb_helper_initial_config(helper, PREFERRED_BPP);
 if (ret < 0) {
  DRM_DEV_ERROR(dev->dev,
         "Failed to set initial hw config - %d.\n",
         ret);
  goto err_drm_fb_helper_fini;
 }

 return 0;

err_drm_fb_helper_fini:
 drm_fb_helper_fini(helper);
 return ret;
}
