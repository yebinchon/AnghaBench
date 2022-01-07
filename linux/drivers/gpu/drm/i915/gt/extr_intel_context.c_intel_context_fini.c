
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int active; int pin_mutex; int vm; scalar_t__ timeline; } ;


 int i915_active_fini (int *) ;
 int i915_vm_put (int ) ;
 int intel_timeline_put (scalar_t__) ;
 int mutex_destroy (int *) ;

void intel_context_fini(struct intel_context *ce)
{
 if (ce->timeline)
  intel_timeline_put(ce->timeline);
 i915_vm_put(ce->vm);

 mutex_destroy(&ce->pin_mutex);
 i915_active_fini(&ce->active);
}
