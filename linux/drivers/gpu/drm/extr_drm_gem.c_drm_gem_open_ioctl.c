
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_gem_open {int size; int handle; scalar_t__ name; } ;
struct drm_gem_object {int size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int object_name_lock; int object_name_idr; } ;


 int DRIVER_GEM ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_gem_handle_create_tail (struct drm_file*,struct drm_gem_object*,int *) ;
 int drm_gem_object_get (struct drm_gem_object*) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct drm_gem_object* idr_find (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
drm_gem_open_ioctl(struct drm_device *dev, void *data,
     struct drm_file *file_priv)
{
 struct drm_gem_open *args = data;
 struct drm_gem_object *obj;
 int ret;
 u32 handle;

 if (!drm_core_check_feature(dev, DRIVER_GEM))
  return -EOPNOTSUPP;

 mutex_lock(&dev->object_name_lock);
 obj = idr_find(&dev->object_name_idr, (int) args->name);
 if (obj) {
  drm_gem_object_get(obj);
 } else {
  mutex_unlock(&dev->object_name_lock);
  return -ENOENT;
 }


 ret = drm_gem_handle_create_tail(file_priv, obj, &handle);
 drm_gem_object_put_unlocked(obj);
 if (ret)
  return ret;

 args->handle = handle;
 args->size = obj->size;

 return 0;
}
