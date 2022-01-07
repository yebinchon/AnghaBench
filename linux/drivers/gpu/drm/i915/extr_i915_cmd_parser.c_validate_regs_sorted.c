
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int reg_table_count; struct drm_i915_reg_table* reg_tables; } ;
struct drm_i915_reg_table {int num_regs; int regs; } ;


 int check_sorted (struct intel_engine_cs*,int ,int ) ;

__attribute__((used)) static bool validate_regs_sorted(struct intel_engine_cs *engine)
{
 int i;
 const struct drm_i915_reg_table *table;

 for (i = 0; i < engine->reg_table_count; i++) {
  table = &engine->reg_tables[i];
  if (!check_sorted(engine, table->regs, table->num_regs))
   return 0;
 }

 return 1;
}
