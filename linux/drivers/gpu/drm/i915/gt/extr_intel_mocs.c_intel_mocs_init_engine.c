
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_gt {int i915; struct intel_uncore* uncore; } ;
struct intel_engine_cs {int id; struct intel_gt* gt; } ;
struct drm_i915_mocs_table {unsigned int size; unsigned int n_entries; TYPE_1__* table; } ;
struct TYPE_2__ {int control_value; } ;


 int FORCEWAKE_ALL ;
 scalar_t__ HAS_GLOBAL_MOCS_REGISTERS (int ) ;
 size_t I915_MOCS_PTE ;
 int assert_forcewakes_active (struct intel_uncore*,int ) ;
 int get_entry_control (struct drm_i915_mocs_table*,unsigned int) ;
 int get_mocs_settings (struct intel_gt*,struct drm_i915_mocs_table*) ;
 int intel_uncore_write_fw (struct intel_uncore*,int ,int ) ;
 int mocs_register (int ,unsigned int) ;

void intel_mocs_init_engine(struct intel_engine_cs *engine)
{
 struct intel_gt *gt = engine->gt;
 struct intel_uncore *uncore = gt->uncore;
 struct drm_i915_mocs_table table;
 unsigned int index;
 u32 unused_value;


 if (HAS_GLOBAL_MOCS_REGISTERS(gt->i915))
  return;


 assert_forcewakes_active(uncore, FORCEWAKE_ALL);

 if (!get_mocs_settings(gt, &table))
  return;


 unused_value = table.table[I915_MOCS_PTE].control_value;

 for (index = 0; index < table.size; index++) {
  u32 value = get_entry_control(&table, index);

  intel_uncore_write_fw(uncore,
          mocs_register(engine->id, index),
          value);
 }


 for (; index < table.n_entries; index++)
  intel_uncore_write_fw(uncore,
          mocs_register(engine->id, index),
          unused_value);
}
