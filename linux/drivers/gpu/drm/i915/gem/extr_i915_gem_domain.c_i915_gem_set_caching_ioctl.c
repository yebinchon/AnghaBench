
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct drm_i915_gem_object {int cache_level; } ;
struct drm_i915_gem_caching {int caching; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;


 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int ENXIO ;
 int HAS_LLC (struct drm_i915_private*) ;
 int HAS_SNOOP (struct drm_i915_private*) ;
 int HAS_WT (struct drm_i915_private*) ;
 int I915_CACHE_LLC ;
 int I915_CACHE_NONE ;
 int I915_CACHE_WT ;



 int I915_WAIT_INTERRUPTIBLE ;
 int MAX_SCHEDULE_TIMEOUT ;
 scalar_t__ i915_gem_object_is_proxy (struct drm_i915_gem_object*) ;
 int i915_gem_object_lock_interruptible (struct drm_i915_gem_object*) ;
 struct drm_i915_gem_object* i915_gem_object_lookup (struct drm_file*,int ) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 int i915_gem_object_set_cache_level (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_unlock (struct drm_i915_gem_object*) ;
 int i915_gem_object_wait (struct drm_i915_gem_object*,int ,int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
          struct drm_file *file)
{
 struct drm_i915_private *i915 = to_i915(dev);
 struct drm_i915_gem_caching *args = data;
 struct drm_i915_gem_object *obj;
 enum i915_cache_level level;
 int ret = 0;

 switch (args->caching) {
 case 128:
  level = I915_CACHE_NONE;
  break;
 case 130:






  if (!HAS_LLC(i915) && !HAS_SNOOP(i915))
   return -ENODEV;

  level = I915_CACHE_LLC;
  break;
 case 129:
  level = HAS_WT(i915) ? I915_CACHE_WT : I915_CACHE_NONE;
  break;
 default:
  return -EINVAL;
 }

 obj = i915_gem_object_lookup(file, args->handle);
 if (!obj)
  return -ENOENT;





 if (i915_gem_object_is_proxy(obj)) {
  ret = -ENXIO;
  goto out;
 }

 if (obj->cache_level == level)
  goto out;

 ret = i915_gem_object_wait(obj,
       I915_WAIT_INTERRUPTIBLE,
       MAX_SCHEDULE_TIMEOUT);
 if (ret)
  goto out;

 ret = mutex_lock_interruptible(&i915->drm.struct_mutex);
 if (ret)
  goto out;

 ret = i915_gem_object_lock_interruptible(obj);
 if (ret == 0) {
  ret = i915_gem_object_set_cache_level(obj, level);
  i915_gem_object_unlock(obj);
 }
 mutex_unlock(&i915->drm.struct_mutex);

out:
 i915_gem_object_put(obj);
 return ret;
}
