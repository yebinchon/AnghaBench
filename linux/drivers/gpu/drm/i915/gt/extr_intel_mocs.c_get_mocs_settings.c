
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_gt {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_mocs_table {int size; TYPE_1__* table; void* n_entries; } ;
struct TYPE_2__ {int l3cc_value; } ;


 void* ARRAY_SIZE (void*) ;
 void* GEN11_NUM_MOCS_ENTRIES ;
 void* GEN9_NUM_MOCS_ENTRIES ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 int L3_ESC (int) ;
 int L3_SCC (int) ;
 scalar_t__ WARN_ON (int) ;
 int WARN_ONCE (int,char*) ;
 void* broxton_mocs_table ;
 void* icelake_mocs_table ;
 void* skylake_mocs_table ;
 void* tigerlake_mocs_table ;

__attribute__((used)) static bool get_mocs_settings(struct intel_gt *gt,
         struct drm_i915_mocs_table *table)
{
 struct drm_i915_private *i915 = gt->i915;
 bool result = 0;

 if (INTEL_GEN(i915) >= 12) {
  table->size = ARRAY_SIZE(tigerlake_mocs_table);
  table->table = tigerlake_mocs_table;
  table->n_entries = GEN11_NUM_MOCS_ENTRIES;
  result = 1;
 } else if (IS_GEN(i915, 11)) {
  table->size = ARRAY_SIZE(icelake_mocs_table);
  table->table = icelake_mocs_table;
  table->n_entries = GEN11_NUM_MOCS_ENTRIES;
  result = 1;
 } else if (IS_GEN9_BC(i915) || IS_CANNONLAKE(i915)) {
  table->size = ARRAY_SIZE(skylake_mocs_table);
  table->n_entries = GEN9_NUM_MOCS_ENTRIES;
  table->table = skylake_mocs_table;
  result = 1;
 } else if (IS_GEN9_LP(i915)) {
  table->size = ARRAY_SIZE(broxton_mocs_table);
  table->n_entries = GEN9_NUM_MOCS_ENTRIES;
  table->table = broxton_mocs_table;
  result = 1;
 } else {
  WARN_ONCE(INTEL_GEN(i915) >= 9,
     "Platform that should have a MOCS table does not.\n");
 }


 if (IS_GEN(i915, 9)) {
  int i;

  for (i = 0; i < table->size; i++)
   if (WARN_ON(table->table[i].l3cc_value &
        (L3_ESC(1) | L3_SCC(0x7))))
    return 0;
 }

 return result;
}
