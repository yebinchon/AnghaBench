
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_fb_helper {int lock; } ;


 int __drm_fb_helper_initial_config_and_unlock (struct drm_fb_helper*,int) ;
 int drm_fbdev_emulation ;
 int mutex_lock (int *) ;

int drm_fb_helper_initial_config(struct drm_fb_helper *fb_helper, int bpp_sel)
{
 int ret;

 if (!drm_fbdev_emulation)
  return 0;

 mutex_lock(&fb_helper->lock);
 ret = __drm_fb_helper_initial_config_and_unlock(fb_helper, bpp_sel);

 return ret;
}
