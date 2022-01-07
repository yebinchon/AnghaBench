
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sched_attr {int priority; } ;
struct drm_i915_gem_object {int dummy; } ;


 int I915_PRIORITY_DISPLAY ;
 int i915_gem_object_wait_priority (struct drm_i915_gem_object*,int ,struct i915_sched_attr*) ;

__attribute__((used)) static void fb_obj_bump_render_priority(struct drm_i915_gem_object *obj)
{
 struct i915_sched_attr attr = {
  .priority = I915_PRIORITY_DISPLAY,
 };

 i915_gem_object_wait_priority(obj, 0, &attr);
}
