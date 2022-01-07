
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_active {int dummy; } ;


 int active_to_vma (struct i915_active*) ;
 int i915_vma_put (int ) ;

__attribute__((used)) static void __i915_vma_retire(struct i915_active *ref)
{
 i915_vma_put(active_to_vma(ref));
}
