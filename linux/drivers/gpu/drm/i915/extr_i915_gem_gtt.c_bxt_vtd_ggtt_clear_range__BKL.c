
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i915_address_space {int dummy; } ;
struct clear_range {int member_2; int member_1; struct i915_address_space* member_0; } ;


 int bxt_vtd_ggtt_clear_range__cb ;
 int stop_machine (int ,struct clear_range*,int *) ;

__attribute__((used)) static void bxt_vtd_ggtt_clear_range__BKL(struct i915_address_space *vm,
       u64 start,
       u64 length)
{
 struct clear_range arg = { vm, start, length };

 stop_machine(bxt_vtd_ggtt_clear_range__cb, &arg, ((void*)0));
}
