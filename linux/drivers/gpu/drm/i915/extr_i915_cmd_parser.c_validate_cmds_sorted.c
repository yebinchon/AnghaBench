
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct intel_engine_cs {int id; int name; } ;
struct drm_i915_cmd_table {int count; struct drm_i915_cmd_descriptor* table; } ;
struct TYPE_2__ {scalar_t__ value; scalar_t__ mask; } ;
struct drm_i915_cmd_descriptor {TYPE_1__ cmd; } ;


 int DRM_ERROR (char*,int ,int ,int,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool validate_cmds_sorted(const struct intel_engine_cs *engine,
     const struct drm_i915_cmd_table *cmd_tables,
     int cmd_table_count)
{
 int i;
 bool ret = 1;

 if (!cmd_tables || cmd_table_count == 0)
  return 1;

 for (i = 0; i < cmd_table_count; i++) {
  const struct drm_i915_cmd_table *table = &cmd_tables[i];
  u32 previous = 0;
  int j;

  for (j = 0; j < table->count; j++) {
   const struct drm_i915_cmd_descriptor *desc =
    &table->table[j];
   u32 curr = desc->cmd.value & desc->cmd.mask;

   if (curr < previous) {
    DRM_ERROR("CMD: %s [%d] command table not sorted: "
       "table=%d entry=%d cmd=0x%08X prev=0x%08X\n",
       engine->name, engine->id,
       i, j, curr, previous);
    ret = 0;
   }

   previous = curr;
  }
 }

 return ret;
}
