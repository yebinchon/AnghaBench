
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {struct i915_address_space* vm; } ;
struct i915_address_space {int dummy; } ;


 int GEM_BUG_ON (int ) ;
 int __apply_ppgtt ;
 int context_apply_all (struct i915_gem_context*,int ,struct i915_address_space*) ;
 struct i915_address_space* i915_vm_get (struct i915_address_space*) ;
 scalar_t__ i915_vm_is_4lvl (struct i915_address_space*) ;

__attribute__((used)) static struct i915_address_space *
__set_ppgtt(struct i915_gem_context *ctx, struct i915_address_space *vm)
{
 struct i915_address_space *old = ctx->vm;

 GEM_BUG_ON(old && i915_vm_is_4lvl(vm) != i915_vm_is_4lvl(old));

 ctx->vm = i915_vm_get(vm);
 context_apply_all(ctx, __apply_ppgtt, vm);

 return old;
}
