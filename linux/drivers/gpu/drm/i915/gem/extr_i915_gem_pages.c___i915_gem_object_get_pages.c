
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int pages_pin_count; } ;
struct drm_i915_gem_object {TYPE_1__ mm; } ;


 int GEM_BUG_ON (int ) ;
 int ____i915_gem_object_get_pages (struct drm_i915_gem_object*) ;
 int atomic_inc (int *) ;
 int i915_gem_object_has_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_has_pinned_pages (struct drm_i915_gem_object*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int smp_mb__before_atomic () ;
 scalar_t__ unlikely (int) ;

int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
{
 int err;

 err = mutex_lock_interruptible(&obj->mm.lock);
 if (err)
  return err;

 if (unlikely(!i915_gem_object_has_pages(obj))) {
  GEM_BUG_ON(i915_gem_object_has_pinned_pages(obj));

  err = ____i915_gem_object_get_pages(obj);
  if (err)
   goto unlock;

  smp_mb__before_atomic();
 }
 atomic_inc(&obj->mm.pages_pin_count);

unlock:
 mutex_unlock(&obj->mm.lock);
 return err;
}
