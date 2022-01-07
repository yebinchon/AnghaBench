
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int active; } ;


 int i915_active_acquire_barrier (int *) ;
 int i915_active_release (int *) ;

void intel_context_active_release(struct intel_context *ce)
{

 i915_active_acquire_barrier(&ce->active);
 i915_active_release(&ce->active);
}
