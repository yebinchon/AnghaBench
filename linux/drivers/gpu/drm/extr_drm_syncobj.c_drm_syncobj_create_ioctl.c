
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_syncobj_create {int flags; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRIVER_SYNCOBJ ;
 int DRM_SYNCOBJ_CREATE_SIGNALED ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_syncobj_create_as_handle (struct drm_file*,int *,int) ;

int
drm_syncobj_create_ioctl(struct drm_device *dev, void *data,
    struct drm_file *file_private)
{
 struct drm_syncobj_create *args = data;

 if (!drm_core_check_feature(dev, DRIVER_SYNCOBJ))
  return -EOPNOTSUPP;


 if (args->flags & ~DRM_SYNCOBJ_CREATE_SIGNALED)
  return -EINVAL;

 return drm_syncobj_create_as_handle(file_private,
         &args->handle, args->flags);
}
