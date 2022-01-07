
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int i915_gem_drain_freed_objects (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cleanup_freed_objects(struct drm_i915_private *i915)
{





 mutex_unlock(&i915->drm.struct_mutex);

 i915_gem_drain_freed_objects(i915);

 mutex_lock(&i915->drm.struct_mutex);
}
