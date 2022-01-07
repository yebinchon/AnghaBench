
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_engine_cs {int reg_table_count; struct drm_i915_reg_table* reg_tables; } ;
struct drm_i915_reg_table {int num_regs; int regs; } ;
struct drm_i915_reg_descriptor {int dummy; } ;


 struct drm_i915_reg_descriptor* __find_reg (int ,int ,int ) ;

__attribute__((used)) static const struct drm_i915_reg_descriptor *
find_reg(const struct intel_engine_cs *engine, u32 addr)
{
 const struct drm_i915_reg_table *table = engine->reg_tables;
 const struct drm_i915_reg_descriptor *reg = ((void*)0);
 int count = engine->reg_table_count;

 for (; !reg && (count > 0); ++table, --count)
  reg = __find_reg(table->regs, table->num_regs, addr);

 return reg;
}
