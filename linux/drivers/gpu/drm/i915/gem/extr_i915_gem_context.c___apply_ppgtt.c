
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int vm; } ;


 int i915_vm_get (void*) ;
 int i915_vm_put (int ) ;

__attribute__((used)) static void __apply_ppgtt(struct intel_context *ce, void *vm)
{
 i915_vm_put(ce->vm);
 ce->vm = i915_vm_get(vm);
}
