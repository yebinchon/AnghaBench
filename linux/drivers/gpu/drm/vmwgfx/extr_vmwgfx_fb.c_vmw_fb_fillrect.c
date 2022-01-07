
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int par; } ;
struct fb_fillrect {int height; int width; int dy; int dx; } ;


 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int vmw_fb_dirty_mark (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void vmw_fb_fillrect(struct fb_info *info, const struct fb_fillrect *rect)
{
 cfb_fillrect(info, rect);
 vmw_fb_dirty_mark(info->par, rect->dx, rect->dy,
     rect->width, rect->height);
}
