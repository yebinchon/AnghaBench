
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int dummy; } ;
struct i915_address_space {int dummy; } ;


 int gen6_ppgtt_unpin (int ) ;
 int i915_vm_to_ppgtt (struct i915_address_space*) ;
 struct i915_address_space* vm_alias (struct intel_context*) ;

__attribute__((used)) static void __context_unpin_ppgtt(struct intel_context *ce)
{
 struct i915_address_space *vm;

 vm = vm_alias(ce);
 if (vm)
  gen6_ppgtt_unpin(i915_vm_to_ppgtt(vm));
}
