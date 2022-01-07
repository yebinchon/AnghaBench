
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_fillrect {int height; int width; int dy; int dx; } ;


 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int drm_fb_helper_dirty (struct fb_info*,int ,int ,int ,int ) ;

void drm_fb_helper_cfb_fillrect(struct fb_info *info,
    const struct fb_fillrect *rect)
{
 cfb_fillrect(info, rect);
 drm_fb_helper_dirty(info, rect->dx, rect->dy,
       rect->width, rect->height);
}
