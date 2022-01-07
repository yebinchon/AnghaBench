
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_msm_gem_madvise {int madv; int retained; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; } ;


 int EINVAL ;
 int ENOENT ;


 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put (struct drm_gem_object*) ;
 int msm_gem_madvise (struct drm_gem_object*,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int msm_ioctl_gem_madvise(struct drm_device *dev, void *data,
  struct drm_file *file)
{
 struct drm_msm_gem_madvise *args = data;
 struct drm_gem_object *obj;
 int ret;

 switch (args->madv) {
 case 129:
 case 128:
  break;
 default:
  return -EINVAL;
 }

 ret = mutex_lock_interruptible(&dev->struct_mutex);
 if (ret)
  return ret;

 obj = drm_gem_object_lookup(file, args->handle);
 if (!obj) {
  ret = -ENOENT;
  goto unlock;
 }

 ret = msm_gem_madvise(obj, args->madv);
 if (ret >= 0) {
  args->retained = ret;
  ret = 0;
 }

 drm_gem_object_put(obj);

unlock:
 mutex_unlock(&dev->struct_mutex);
 return ret;
}
