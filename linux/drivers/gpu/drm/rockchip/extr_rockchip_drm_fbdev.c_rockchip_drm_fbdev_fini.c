
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_fb_helper {scalar_t__ fb; } ;
struct rockchip_drm_private {struct drm_fb_helper fbdev_helper; } ;
struct drm_device {struct rockchip_drm_private* dev_private; } ;


 int drm_fb_helper_fini (struct drm_fb_helper*) ;
 int drm_fb_helper_unregister_fbi (struct drm_fb_helper*) ;
 int drm_framebuffer_put (scalar_t__) ;

void rockchip_drm_fbdev_fini(struct drm_device *dev)
{
 struct rockchip_drm_private *private = dev->dev_private;
 struct drm_fb_helper *helper;

 helper = &private->fbdev_helper;

 drm_fb_helper_unregister_fbi(helper);

 if (helper->fb)
  drm_framebuffer_put(helper->fb);

 drm_fb_helper_fini(helper);
}
