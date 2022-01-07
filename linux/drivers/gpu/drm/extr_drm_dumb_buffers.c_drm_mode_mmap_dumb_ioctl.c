
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_map_dumb {int offset; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* dumb_map_offset ) (struct drm_file*,struct drm_device*,int ,int *) ;int dumb_create; } ;


 int ENOSYS ;
 int drm_gem_dumb_map_offset (struct drm_file*,struct drm_device*,int ,int *) ;
 int stub1 (struct drm_file*,struct drm_device*,int ,int *) ;

int drm_mode_mmap_dumb_ioctl(struct drm_device *dev,
        void *data, struct drm_file *file_priv)
{
 struct drm_mode_map_dumb *args = data;

 if (!dev->driver->dumb_create)
  return -ENOSYS;

 if (dev->driver->dumb_map_offset)
  return dev->driver->dumb_map_offset(file_priv, dev,
          args->handle,
          &args->offset);
 else
  return drm_gem_dumb_map_offset(file_priv, dev, args->handle,
            &args->offset);
}
