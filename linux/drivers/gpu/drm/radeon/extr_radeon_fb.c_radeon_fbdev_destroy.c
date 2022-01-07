
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int ** obj; } ;
struct radeon_fbdev {int helper; struct drm_framebuffer fb; } ;
struct drm_device {int dummy; } ;


 int drm_fb_helper_fini (int *) ;
 int drm_fb_helper_unregister_fbi (int *) ;
 int drm_framebuffer_cleanup (struct drm_framebuffer*) ;
 int drm_framebuffer_unregister_private (struct drm_framebuffer*) ;
 int radeonfb_destroy_pinned_object (int *) ;

__attribute__((used)) static int radeon_fbdev_destroy(struct drm_device *dev, struct radeon_fbdev *rfbdev)
{
 struct drm_framebuffer *fb = &rfbdev->fb;

 drm_fb_helper_unregister_fbi(&rfbdev->helper);

 if (fb->obj[0]) {
  radeonfb_destroy_pinned_object(fb->obj[0]);
  fb->obj[0] = ((void*)0);
  drm_framebuffer_unregister_private(fb);
  drm_framebuffer_cleanup(fb);
 }
 drm_fb_helper_fini(&rfbdev->helper);

 return 0;
}
