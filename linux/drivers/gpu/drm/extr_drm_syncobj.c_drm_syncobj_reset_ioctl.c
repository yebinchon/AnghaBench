
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct drm_syncobj_array {scalar_t__ pad; scalar_t__ count_handles; int handles; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRIVER_SYNCOBJ ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_syncobj_array_find (struct drm_file*,int ,scalar_t__,struct drm_syncobj***) ;
 int drm_syncobj_array_free (struct drm_syncobj**,size_t) ;
 int drm_syncobj_replace_fence (struct drm_syncobj*,int *) ;
 int u64_to_user_ptr (int ) ;

int
drm_syncobj_reset_ioctl(struct drm_device *dev, void *data,
   struct drm_file *file_private)
{
 struct drm_syncobj_array *args = data;
 struct drm_syncobj **syncobjs;
 uint32_t i;
 int ret;

 if (!drm_core_check_feature(dev, DRIVER_SYNCOBJ))
  return -EOPNOTSUPP;

 if (args->pad != 0)
  return -EINVAL;

 if (args->count_handles == 0)
  return -EINVAL;

 ret = drm_syncobj_array_find(file_private,
         u64_to_user_ptr(args->handles),
         args->count_handles,
         &syncobjs);
 if (ret < 0)
  return ret;

 for (i = 0; i < args->count_handles; i++)
  drm_syncobj_replace_fence(syncobjs[i], ((void*)0));

 drm_syncobj_array_free(syncobjs, args->count_handles);

 return 0;
}
