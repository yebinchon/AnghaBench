
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_copyarea {int height; int width; int dy; int dx; } ;


 int drm_fb_helper_dirty (struct fb_info*,int ,int ,int ,int ) ;
 int sys_copyarea (struct fb_info*,struct fb_copyarea const*) ;

void drm_fb_helper_sys_copyarea(struct fb_info *info,
    const struct fb_copyarea *area)
{
 sys_copyarea(info, area);
 drm_fb_helper_dirty(info, area->dx, area->dy,
       area->width, area->height);
}
