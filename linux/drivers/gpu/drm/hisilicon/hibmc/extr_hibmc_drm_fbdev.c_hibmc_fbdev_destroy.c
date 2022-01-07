
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hibmc_framebuffer {int fb; } ;
struct drm_fb_helper {int dummy; } ;
struct hibmc_fbdev {struct drm_fb_helper helper; struct hibmc_framebuffer* fb; } ;


 int drm_fb_helper_fini (struct drm_fb_helper*) ;
 int drm_fb_helper_unregister_fbi (struct drm_fb_helper*) ;
 int drm_framebuffer_put (int *) ;

__attribute__((used)) static void hibmc_fbdev_destroy(struct hibmc_fbdev *fbdev)
{
 struct hibmc_framebuffer *gfb = fbdev->fb;
 struct drm_fb_helper *fbh = &fbdev->helper;

 drm_fb_helper_unregister_fbi(fbh);

 drm_fb_helper_fini(fbh);

 if (gfb)
  drm_framebuffer_put(&gfb->fb);
}
