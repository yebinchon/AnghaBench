
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct fb_info {struct drm_fb_helper* par; } ;
struct drm_fb_helper {TYPE_3__* buffer; TYPE_2__* dev; } ;
struct TYPE_6__ {int gem; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int (* gem_prime_mmap ) (int ,struct vm_area_struct*) ;} ;


 int ENODEV ;
 int stub1 (int ,struct vm_area_struct*) ;

__attribute__((used)) static int drm_fbdev_fb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 struct drm_fb_helper *fb_helper = info->par;

 if (fb_helper->dev->driver->gem_prime_mmap)
  return fb_helper->dev->driver->gem_prime_mmap(fb_helper->buffer->gem, vma);
 else
  return -ENODEV;
}
