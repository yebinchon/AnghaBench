
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int frontbuffer; } ;


 int READ_ONCE (int ) ;

__attribute__((used)) static inline bool
i915_gem_object_is_framebuffer(const struct drm_i915_gem_object *obj)
{
 return READ_ONCE(obj->frontbuffer);
}
