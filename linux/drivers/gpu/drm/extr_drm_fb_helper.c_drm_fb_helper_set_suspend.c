
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_fb_helper {scalar_t__ fbdev; } ;


 int fb_set_suspend (scalar_t__,int) ;

void drm_fb_helper_set_suspend(struct drm_fb_helper *fb_helper, bool suspend)
{
 if (fb_helper && fb_helper->fbdev)
  fb_set_suspend(fb_helper->fbdev, suspend);
}
