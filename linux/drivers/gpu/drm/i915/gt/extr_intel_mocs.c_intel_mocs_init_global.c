
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore {int dummy; } ;
struct intel_gt {int i915; struct intel_uncore* uncore; } ;
struct drm_i915_mocs_table {unsigned int size; unsigned int n_entries; TYPE_1__* table; } ;
struct TYPE_2__ {int control_value; } ;


 int GEM_BUG_ON (int) ;
 scalar_t__ GEM_DEBUG_WARN_ON (int) ;
 int GEN12_GLOBAL_MOCS (unsigned int) ;
 int HAS_GLOBAL_MOCS_REGISTERS (int ) ;
 int get_mocs_settings (struct intel_gt*,struct drm_i915_mocs_table*) ;
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;

__attribute__((used)) static void intel_mocs_init_global(struct intel_gt *gt)
{
 struct intel_uncore *uncore = gt->uncore;
 struct drm_i915_mocs_table table;
 unsigned int index;

 GEM_BUG_ON(!HAS_GLOBAL_MOCS_REGISTERS(gt->i915));

 if (!get_mocs_settings(gt, &table))
  return;

 if (GEM_DEBUG_WARN_ON(table.size > table.n_entries))
  return;

 for (index = 0; index < table.size; index++)
  intel_uncore_write(uncore,
       GEN12_GLOBAL_MOCS(index),
       table.table[index].control_value);






 for (; index < table.n_entries; index++)
  intel_uncore_write(uncore,
       GEN12_GLOBAL_MOCS(index),
       table.table[0].control_value);
}
