
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int deferred_work; int par; } ;
struct fb_image {int dummy; } ;


 int schedule_delayed_work (int *,int ) ;
 int sys_imageblit (struct fb_info*,struct fb_image const*) ;

__attribute__((used)) static void picolcd_fb_imageblit(struct fb_info *info, const struct fb_image *image)
{
 if (!info->par)
  return;
 sys_imageblit(info, image);

 schedule_delayed_work(&info->deferred_work, 0);
}
