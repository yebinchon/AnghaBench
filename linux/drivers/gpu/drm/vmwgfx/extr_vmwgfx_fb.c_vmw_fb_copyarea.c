
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int par; } ;
struct fb_copyarea {int height; int width; int dy; int dx; } ;


 int cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int vmw_fb_dirty_mark (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void vmw_fb_copyarea(struct fb_info *info, const struct fb_copyarea *region)
{
 cfb_copyarea(info, region);
 vmw_fb_dirty_mark(info->par, region->dx, region->dy,
     region->width, region->height);
}
