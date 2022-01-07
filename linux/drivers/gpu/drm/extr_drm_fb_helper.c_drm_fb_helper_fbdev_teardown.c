
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_ops {int dummy; } ;
struct drm_fb_helper {scalar_t__ fb; TYPE_1__* fbdev; } ;
struct drm_device {struct drm_fb_helper* fb_helper; } ;
struct TYPE_2__ {struct fb_ops* fbops; struct fb_ops* fbdefio; scalar_t__ dev; } ;


 int drm_fb_helper_fini (struct drm_fb_helper*) ;
 int drm_fb_helper_unregister_fbi (struct drm_fb_helper*) ;
 int drm_framebuffer_remove (scalar_t__) ;
 int fb_deferred_io_cleanup (TYPE_1__*) ;
 int kfree (struct fb_ops*) ;

void drm_fb_helper_fbdev_teardown(struct drm_device *dev)
{
 struct drm_fb_helper *fb_helper = dev->fb_helper;
 struct fb_ops *fbops = ((void*)0);

 if (!fb_helper)
  return;


 if (fb_helper->fbdev && fb_helper->fbdev->dev)
  drm_fb_helper_unregister_fbi(fb_helper);

 if (fb_helper->fbdev && fb_helper->fbdev->fbdefio) {
  fb_deferred_io_cleanup(fb_helper->fbdev);
  kfree(fb_helper->fbdev->fbdefio);
  fbops = fb_helper->fbdev->fbops;
 }

 drm_fb_helper_fini(fb_helper);
 kfree(fbops);

 if (fb_helper->fb)
  drm_framebuffer_remove(fb_helper->fb);
}
