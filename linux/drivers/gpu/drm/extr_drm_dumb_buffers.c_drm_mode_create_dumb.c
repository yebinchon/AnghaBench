
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_mode_create_dumb {int width; int height; int bpp; scalar_t__ size; scalar_t__ pitch; scalar_t__ handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* dumb_create ) (struct drm_file*,struct drm_device*,struct drm_mode_create_dumb*) ;} ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ENOSYS ;
 scalar_t__ PAGE_ALIGN (int) ;
 int U32_MAX ;
 int stub1 (struct drm_file*,struct drm_device*,struct drm_mode_create_dumb*) ;

int drm_mode_create_dumb(struct drm_device *dev,
    struct drm_mode_create_dumb *args,
    struct drm_file *file_priv)
{
 u32 cpp, stride, size;

 if (!dev->driver->dumb_create)
  return -ENOSYS;
 if (!args->width || !args->height || !args->bpp)
  return -EINVAL;


 if (args->bpp > U32_MAX - 8)
  return -EINVAL;
 cpp = DIV_ROUND_UP(args->bpp, 8);
 if (cpp > U32_MAX / args->width)
  return -EINVAL;
 stride = cpp * args->width;
 if (args->height > U32_MAX / stride)
  return -EINVAL;


 size = args->height * stride;
 if (PAGE_ALIGN(size) == 0)
  return -EINVAL;







 args->handle = 0;
 args->pitch = 0;
 args->size = 0;

 return dev->driver->dumb_create(file_priv, dev, args);
}
