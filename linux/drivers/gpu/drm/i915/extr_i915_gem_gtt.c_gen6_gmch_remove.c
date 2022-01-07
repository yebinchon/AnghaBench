
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_ggtt {int gsm; } ;
struct i915_address_space {int dummy; } ;


 int cleanup_scratch_page (struct i915_address_space*) ;
 struct i915_ggtt* i915_vm_to_ggtt (struct i915_address_space*) ;
 int iounmap (int ) ;

__attribute__((used)) static void gen6_gmch_remove(struct i915_address_space *vm)
{
 struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);

 iounmap(ggtt->gsm);
 cleanup_scratch_page(vm);
}
