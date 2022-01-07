
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_close {int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRIVER_GEM ;
 int EOPNOTSUPP ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_gem_handle_delete (struct drm_file*,int ) ;

int
drm_gem_close_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 struct drm_gem_close *args = data;
 int ret;

 if (!drm_core_check_feature(dev, DRIVER_GEM))
  return -EOPNOTSUPP;

 ret = drm_gem_handle_delete(file_priv, args->handle);

 return ret;
}
