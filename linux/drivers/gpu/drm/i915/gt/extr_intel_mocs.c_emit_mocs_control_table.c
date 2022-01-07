
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct i915_request {TYPE_1__* engine; } ;
struct drm_i915_mocs_table {int size; int n_entries; TYPE_2__* table; } ;
typedef enum intel_engine_id { ____Placeholder_intel_engine_id } intel_engine_id ;
struct TYPE_4__ {void* control_value; } ;
struct TYPE_3__ {int id; } ;


 int ENODEV ;
 scalar_t__ GEM_WARN_ON (int) ;
 size_t I915_MOCS_PTE ;
 scalar_t__ IS_ERR (void**) ;
 int MI_LOAD_REGISTER_IMM (int) ;
 int MI_NOOP ;
 int PTR_ERR (void**) ;
 void* get_entry_control (struct drm_i915_mocs_table const*,unsigned int) ;
 void* i915_mmio_reg_offset (int ) ;
 int intel_ring_advance (struct i915_request*,void**) ;
 void** intel_ring_begin (struct i915_request*,int) ;
 int mocs_register (int,unsigned int) ;

__attribute__((used)) static int emit_mocs_control_table(struct i915_request *rq,
       const struct drm_i915_mocs_table *table)
{
 enum intel_engine_id engine = rq->engine->id;
 unsigned int index;
 u32 unused_value;
 u32 *cs;

 if (GEM_WARN_ON(table->size > table->n_entries))
  return -ENODEV;


 unused_value = table->table[I915_MOCS_PTE].control_value;

 cs = intel_ring_begin(rq, 2 + 2 * table->n_entries);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 *cs++ = MI_LOAD_REGISTER_IMM(table->n_entries);

 for (index = 0; index < table->size; index++) {
  u32 value = get_entry_control(table, index);

  *cs++ = i915_mmio_reg_offset(mocs_register(engine, index));
  *cs++ = value;
 }


 for (; index < table->n_entries; index++) {
  *cs++ = i915_mmio_reg_offset(mocs_register(engine, index));
  *cs++ = unused_value;
 }

 *cs++ = MI_NOOP;
 intel_ring_advance(rq, cs);

 return 0;
}
