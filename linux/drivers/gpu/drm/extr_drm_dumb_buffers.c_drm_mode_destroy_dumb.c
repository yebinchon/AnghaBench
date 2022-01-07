
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* dumb_destroy ) (struct drm_file*,struct drm_device*,int ) ;int dumb_create; } ;


 int ENOSYS ;
 int drm_gem_dumb_destroy (struct drm_file*,struct drm_device*,int ) ;
 int stub1 (struct drm_file*,struct drm_device*,int ) ;

int drm_mode_destroy_dumb(struct drm_device *dev, u32 handle,
     struct drm_file *file_priv)
{
 if (!dev->driver->dumb_create)
  return -ENOSYS;

 if (dev->driver->dumb_destroy)
  return dev->driver->dumb_destroy(file_priv, dev, handle);
 else
  return drm_gem_dumb_destroy(file_priv, dev, handle);
}
