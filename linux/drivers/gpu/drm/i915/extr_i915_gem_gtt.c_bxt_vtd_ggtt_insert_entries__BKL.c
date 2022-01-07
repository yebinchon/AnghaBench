
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct insert_entries {int member_2; int member_3; struct i915_vma* member_1; struct i915_address_space* member_0; } ;
struct i915_vma {int dummy; } ;
struct i915_address_space {int dummy; } ;
typedef enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;


 int bxt_vtd_ggtt_insert_entries__cb ;
 int stop_machine (int ,struct insert_entries*,int *) ;

__attribute__((used)) static void bxt_vtd_ggtt_insert_entries__BKL(struct i915_address_space *vm,
          struct i915_vma *vma,
          enum i915_cache_level level,
          u32 flags)
{
 struct insert_entries arg = { vm, vma, level, flags };

 stop_machine(bxt_vtd_ggtt_insert_entries__cb, &arg, ((void*)0));
}
