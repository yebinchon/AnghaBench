
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int i915; } ;


 scalar_t__ HAS_GLOBAL_MOCS_REGISTERS (int ) ;
 int intel_mocs_init_global (struct intel_gt*) ;
 int intel_mocs_init_l3cc_table (struct intel_gt*) ;

void intel_mocs_init(struct intel_gt *gt)
{
 intel_mocs_init_l3cc_table(gt);

 if (HAS_GLOBAL_MOCS_REGISTERS(gt->i915))
  intel_mocs_init_global(gt);
}
