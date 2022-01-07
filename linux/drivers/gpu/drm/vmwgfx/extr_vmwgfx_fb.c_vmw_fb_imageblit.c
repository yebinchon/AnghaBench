
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int par; } ;
struct fb_image {int height; int width; int dy; int dx; } ;


 int cfb_imageblit (struct fb_info*,struct fb_image const*) ;
 int vmw_fb_dirty_mark (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void vmw_fb_imageblit(struct fb_info *info, const struct fb_image *image)
{
 cfb_imageblit(info, image);
 vmw_fb_dirty_mark(info->par, image->dx, image->dy,
     image->width, image->height);
}
