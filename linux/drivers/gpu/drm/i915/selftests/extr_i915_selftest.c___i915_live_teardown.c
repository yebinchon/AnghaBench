
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int EIO ;
 int I915_WAIT_LOCKED ;
 int i915_gem_drain_freed_objects (struct drm_i915_private*) ;
 scalar_t__ igt_flush_test (struct drm_i915_private*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int __i915_live_teardown(int err, void *data)
{
 struct drm_i915_private *i915 = data;

 mutex_lock(&i915->drm.struct_mutex);
 if (igt_flush_test(i915, I915_WAIT_LOCKED))
  err = -EIO;
 mutex_unlock(&i915->drm.struct_mutex);

 i915_gem_drain_freed_objects(i915);

 return err;
}
