
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int vm; } ;
struct i915_address_space {int ref; } ;


 struct i915_address_space* READ_ONCE (int ) ;
 int __assign_ppgtt (struct i915_gem_context*,struct i915_address_space*) ;
 int i915_vm_put (struct i915_address_space*) ;
 int kref_get_unless_zero (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int clone_vm(struct i915_gem_context *dst,
      struct i915_gem_context *src)
{
 struct i915_address_space *vm;

 rcu_read_lock();
 do {
  vm = READ_ONCE(src->vm);
  if (!vm)
   break;

  if (!kref_get_unless_zero(&vm->ref))
   continue;
  if (vm == READ_ONCE(src->vm))
   break;

  i915_vm_put(vm);
 } while (1);
 rcu_read_unlock();

 if (vm) {
  __assign_ppgtt(dst, vm);
  i915_vm_put(vm);
 }

 return 0;
}
