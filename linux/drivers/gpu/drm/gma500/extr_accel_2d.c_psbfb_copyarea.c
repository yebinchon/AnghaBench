
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {scalar_t__ state; int flags; } ;
struct fb_copyarea {int width; int height; } ;


 int FBINFO_HWACCEL_DISABLED ;
 scalar_t__ FBINFO_STATE_RUNNING ;
 void drm_fb_helper_cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int psbfb_copyarea_accel (struct fb_info*,struct fb_copyarea const*) ;
 scalar_t__ unlikely (int) ;

void psbfb_copyarea(struct fb_info *info,
      const struct fb_copyarea *region)
{
 if (unlikely(info->state != FBINFO_STATE_RUNNING))
  return;


 if (region->width == 8 || region->height == 8 ||
  (info->flags & FBINFO_HWACCEL_DISABLED))
  return drm_fb_helper_cfb_copyarea(info, region);

 psbfb_copyarea_accel(info, region);
}
