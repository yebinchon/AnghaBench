
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_image {int height; int width; int dy; int dx; } ;


 int drm_fb_helper_dirty (struct fb_info*,int ,int ,int ,int ) ;
 int sys_imageblit (struct fb_info*,struct fb_image const*) ;

void drm_fb_helper_sys_imageblit(struct fb_info *info,
     const struct fb_image *image)
{
 sys_imageblit(info, image);
 drm_fb_helper_dirty(info, image->dx, image->dy,
       image->width, image->height);
}
