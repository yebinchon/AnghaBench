
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_i915_gem_set_tiling {scalar_t__ tiling_mode; scalar_t__ swizzle_mode; scalar_t__ stride; int handle; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; } ;
struct TYPE_3__ {scalar_t__ bit_6_swizzle_x; scalar_t__ bit_6_swizzle_y; } ;
struct TYPE_4__ {TYPE_1__ mm; } ;


 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 scalar_t__ I915_BIT_6_SWIZZLE_9 ;
 scalar_t__ I915_BIT_6_SWIZZLE_9_10 ;
 scalar_t__ I915_BIT_6_SWIZZLE_9_10_17 ;
 scalar_t__ I915_BIT_6_SWIZZLE_9_17 ;
 void* I915_BIT_6_SWIZZLE_NONE ;
 scalar_t__ I915_BIT_6_SWIZZLE_UNKNOWN ;
 scalar_t__ I915_TILING_NONE ;
 scalar_t__ I915_TILING_X ;
 scalar_t__ i915_gem_object_get_stride (struct drm_i915_gem_object*) ;
 scalar_t__ i915_gem_object_get_tiling (struct drm_i915_gem_object*) ;
 scalar_t__ i915_gem_object_is_proxy (struct drm_i915_gem_object*) ;
 struct drm_i915_gem_object* i915_gem_object_lookup (struct drm_file*,int ) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 int i915_gem_object_set_tiling (struct drm_i915_gem_object*,scalar_t__,scalar_t__) ;
 int i915_tiling_ok (struct drm_i915_gem_object*,scalar_t__,scalar_t__) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* to_i915 (struct drm_device*) ;

int
i915_gem_set_tiling_ioctl(struct drm_device *dev, void *data,
     struct drm_file *file)
{
 struct drm_i915_gem_set_tiling *args = data;
 struct drm_i915_gem_object *obj;
 int err;

 obj = i915_gem_object_lookup(file, args->handle);
 if (!obj)
  return -ENOENT;





 if (i915_gem_object_is_proxy(obj)) {
  err = -ENXIO;
  goto err;
 }

 if (!i915_tiling_ok(obj, args->tiling_mode, args->stride)) {
  err = -EINVAL;
  goto err;
 }

 if (args->tiling_mode == I915_TILING_NONE) {
  args->swizzle_mode = I915_BIT_6_SWIZZLE_NONE;
  args->stride = 0;
 } else {
  if (args->tiling_mode == I915_TILING_X)
   args->swizzle_mode = to_i915(dev)->mm.bit_6_swizzle_x;
  else
   args->swizzle_mode = to_i915(dev)->mm.bit_6_swizzle_y;
  if (args->swizzle_mode == I915_BIT_6_SWIZZLE_9_17)
   args->swizzle_mode = I915_BIT_6_SWIZZLE_9;
  if (args->swizzle_mode == I915_BIT_6_SWIZZLE_9_10_17)
   args->swizzle_mode = I915_BIT_6_SWIZZLE_9_10;


  if (args->swizzle_mode == I915_BIT_6_SWIZZLE_UNKNOWN) {
   args->tiling_mode = I915_TILING_NONE;
   args->swizzle_mode = I915_BIT_6_SWIZZLE_NONE;
   args->stride = 0;
  }
 }

 err = mutex_lock_interruptible(&dev->struct_mutex);
 if (err)
  goto err;

 err = i915_gem_object_set_tiling(obj, args->tiling_mode, args->stride);
 mutex_unlock(&dev->struct_mutex);


 args->stride = i915_gem_object_get_stride(obj);
 args->tiling_mode = i915_gem_object_get_tiling(obj);

err:
 i915_gem_object_put(obj);
 return err;
}
