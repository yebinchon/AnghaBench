
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ madv; int pages_pin_count; } ;
struct drm_i915_gem_object {TYPE_1__ mm; int pin_global; int bind_count; } ;


 scalar_t__ I915_MADV_DONTNEED ;
 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ atomic_read (int *) ;
 int i915_gem_object_is_shrinkable (struct drm_i915_gem_object*) ;
 scalar_t__ swap_available () ;

__attribute__((used)) static bool can_release_pages(struct drm_i915_gem_object *obj)
{

 if (!i915_gem_object_is_shrinkable(obj))
  return 0;
 if (atomic_read(&obj->mm.pages_pin_count) > atomic_read(&obj->bind_count))
  return 0;







 if (READ_ONCE(obj->pin_global))
  return 0;





 return swap_available() || obj->mm.madv == I915_MADV_DONTNEED;
}
