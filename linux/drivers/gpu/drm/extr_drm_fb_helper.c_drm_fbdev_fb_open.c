
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fb_info {struct drm_fb_helper* par; } ;
struct drm_fb_helper {TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {TYPE_1__* fops; } ;
struct TYPE_4__ {int owner; } ;


 int ENODEV ;
 int try_module_get (int ) ;

__attribute__((used)) static int drm_fbdev_fb_open(struct fb_info *info, int user)
{
 struct drm_fb_helper *fb_helper = info->par;


 if (user && !try_module_get(fb_helper->dev->driver->fops->owner))
  return -ENODEV;

 return 0;
}
