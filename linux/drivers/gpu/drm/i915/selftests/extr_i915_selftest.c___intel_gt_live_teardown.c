
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_gt {TYPE_2__* i915; } ;
struct TYPE_4__ {int struct_mutex; } ;
struct TYPE_5__ {TYPE_1__ drm; } ;


 int EIO ;
 int I915_WAIT_LOCKED ;
 int i915_gem_drain_freed_objects (TYPE_2__*) ;
 scalar_t__ igt_flush_test (TYPE_2__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int __intel_gt_live_teardown(int err, void *data)
{
 struct intel_gt *gt = data;

 mutex_lock(&gt->i915->drm.struct_mutex);
 if (igt_flush_test(gt->i915, I915_WAIT_LOCKED))
  err = -EIO;
 mutex_unlock(&gt->i915->drm.struct_mutex);

 i915_gem_drain_freed_objects(gt->i915);

 return err;
}
