
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int active; int engine; int gem_context; } ;


 int i915_active_acquire (int *) ;
 int i915_active_acquire_preallocate_barrier (int *,int ) ;
 int i915_active_release (int *) ;
 int i915_gem_context_is_kernel (int ) ;

int intel_context_active_acquire(struct intel_context *ce)
{
 int err;

 err = i915_active_acquire(&ce->active);
 if (err)
  return err;


 if (!i915_gem_context_is_kernel(ce->gem_context)) {
  err = i915_active_acquire_preallocate_barrier(&ce->active,
             ce->engine);
  if (err) {
   i915_active_release(&ce->active);
   return err;
  }
 }

 return 0;
}
