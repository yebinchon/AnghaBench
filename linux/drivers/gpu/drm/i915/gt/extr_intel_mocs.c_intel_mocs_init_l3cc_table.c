
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct intel_uncore {int dummy; } ;
struct intel_gt {struct intel_uncore* uncore; } ;
struct drm_i915_mocs_table {int size; int n_entries; TYPE_1__* table; } ;
struct TYPE_2__ {int l3cc_value; } ;


 int GEN9_LNCFCMOCS (unsigned int) ;
 size_t I915_MOCS_PTE ;
 int get_entry_l3cc (struct drm_i915_mocs_table*,int) ;
 int get_mocs_settings (struct intel_gt*,struct drm_i915_mocs_table*) ;
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;
 int l3cc_combine (struct drm_i915_mocs_table*,int ,int ) ;

__attribute__((used)) static void intel_mocs_init_l3cc_table(struct intel_gt *gt)
{
 struct intel_uncore *uncore = gt->uncore;
 struct drm_i915_mocs_table table;
 unsigned int i;
 u16 unused_value;

 if (!get_mocs_settings(gt, &table))
  return;


 unused_value = table.table[I915_MOCS_PTE].l3cc_value;

 for (i = 0; i < table.size / 2; i++) {
  u16 low = get_entry_l3cc(&table, 2 * i);
  u16 high = get_entry_l3cc(&table, 2 * i + 1);

  intel_uncore_write(uncore,
       GEN9_LNCFCMOCS(i),
       l3cc_combine(&table, low, high));
 }


 if (table.size & 0x01) {
  u16 low = get_entry_l3cc(&table, 2 * i);

  intel_uncore_write(uncore,
       GEN9_LNCFCMOCS(i),
       l3cc_combine(&table, low, unused_value));
  i++;
 }


 for (; i < table.n_entries / 2; i++)
  intel_uncore_write(uncore,
       GEN9_LNCFCMOCS(i),
       l3cc_combine(&table, unused_value,
      unused_value));
}
