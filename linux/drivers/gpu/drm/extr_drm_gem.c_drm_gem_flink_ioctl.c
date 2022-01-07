
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct drm_gem_object {scalar_t__ handle_count; int name; } ;
struct drm_gem_flink {scalar_t__ name; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int object_name_lock; int object_name_idr; } ;


 int DRIVER_GEM ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int idr_alloc (int *,struct drm_gem_object*,int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
drm_gem_flink_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 struct drm_gem_flink *args = data;
 struct drm_gem_object *obj;
 int ret;

 if (!drm_core_check_feature(dev, DRIVER_GEM))
  return -EOPNOTSUPP;

 obj = drm_gem_object_lookup(file_priv, args->handle);
 if (obj == ((void*)0))
  return -ENOENT;

 mutex_lock(&dev->object_name_lock);

 if (obj->handle_count == 0) {
  ret = -ENOENT;
  goto err;
 }

 if (!obj->name) {
  ret = idr_alloc(&dev->object_name_idr, obj, 1, 0, GFP_KERNEL);
  if (ret < 0)
   goto err;

  obj->name = ret;
 }

 args->name = (uint64_t) obj->name;
 ret = 0;

err:
 mutex_unlock(&dev->object_name_lock);
 drm_gem_object_put_unlocked(obj);
 return ret;
}
