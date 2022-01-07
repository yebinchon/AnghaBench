
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_fb_helper {scalar_t__ fbdev; } ;


 int unlink_framebuffer (scalar_t__) ;

void drm_fb_helper_unlink_fbi(struct drm_fb_helper *fb_helper)
{
 if (fb_helper && fb_helper->fbdev)
  unlink_framebuffer(fb_helper->fbdev);
}
