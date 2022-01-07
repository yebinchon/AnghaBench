
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 int __i915_gem_object_flush_map (struct drm_i915_gem_object*,int ,int ) ;

__attribute__((used)) static inline void i915_gem_object_flush_map(struct drm_i915_gem_object *obj)
{
 __i915_gem_object_flush_map(obj, 0, obj->base.size);
}
