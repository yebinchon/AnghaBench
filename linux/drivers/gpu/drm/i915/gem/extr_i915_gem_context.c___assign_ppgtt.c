
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {struct i915_address_space* vm; } ;
struct i915_address_space {int dummy; } ;


 struct i915_address_space* __set_ppgtt (struct i915_gem_context*,struct i915_address_space*) ;
 int i915_vm_put (struct i915_address_space*) ;

__attribute__((used)) static void __assign_ppgtt(struct i915_gem_context *ctx,
      struct i915_address_space *vm)
{
 if (vm == ctx->vm)
  return;

 vm = __set_ppgtt(ctx, vm);
 if (vm)
  i915_vm_put(vm);
}
