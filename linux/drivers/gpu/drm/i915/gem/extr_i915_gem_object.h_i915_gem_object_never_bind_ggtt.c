
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_gem_object {TYPE_1__* ops; } ;
struct TYPE_2__ {int flags; } ;


 int I915_GEM_OBJECT_NO_GGTT ;

__attribute__((used)) static inline bool
i915_gem_object_never_bind_ggtt(const struct drm_i915_gem_object *obj)
{
 return obj->ops->flags & I915_GEM_OBJECT_NO_GGTT;
}
