
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_syncobj_destroy {int handle; scalar_t__ pad; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRIVER_SYNCOBJ ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_syncobj_destroy (struct drm_file*,int ) ;

int
drm_syncobj_destroy_ioctl(struct drm_device *dev, void *data,
     struct drm_file *file_private)
{
 struct drm_syncobj_destroy *args = data;

 if (!drm_core_check_feature(dev, DRIVER_SYNCOBJ))
  return -EOPNOTSUPP;


 if (args->pad)
  return -EINVAL;
 return drm_syncobj_destroy(file_private, args->handle);
}
