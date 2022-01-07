
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_syncobj_transfer {scalar_t__ dst_point; scalar_t__ pad; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRIVER_SYNCOBJ_TIMELINE ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_syncobj_transfer_to_binary (struct drm_file*,struct drm_syncobj_transfer*) ;
 int drm_syncobj_transfer_to_timeline (struct drm_file*,struct drm_syncobj_transfer*) ;

int
drm_syncobj_transfer_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file_private)
{
 struct drm_syncobj_transfer *args = data;
 int ret;

 if (!drm_core_check_feature(dev, DRIVER_SYNCOBJ_TIMELINE))
  return -EOPNOTSUPP;

 if (args->pad)
  return -EINVAL;

 if (args->dst_point)
  ret = drm_syncobj_transfer_to_timeline(file_private, args);
 else
  ret = drm_syncobj_transfer_to_binary(file_private, args);

 return ret;
}
