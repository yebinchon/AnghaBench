
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct i915_request {int dummy; } ;
struct drm_i915_mocs_table {int size; int n_entries; TYPE_1__* table; } ;
struct TYPE_2__ {int l3cc_value; } ;


 int ENODEV ;
 scalar_t__ GEM_WARN_ON (int) ;
 int GEN9_LNCFCMOCS (unsigned int) ;
 size_t I915_MOCS_PTE ;
 scalar_t__ IS_ERR (int *) ;
 int MI_LOAD_REGISTER_IMM (int) ;
 int MI_NOOP ;
 int PTR_ERR (int *) ;
 int get_entry_l3cc (struct drm_i915_mocs_table const*,int) ;
 void* i915_mmio_reg_offset (int ) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;
 void* l3cc_combine (struct drm_i915_mocs_table const*,int ,int ) ;

__attribute__((used)) static int emit_mocs_l3cc_table(struct i915_request *rq,
    const struct drm_i915_mocs_table *table)
{
 u16 unused_value;
 unsigned int i;
 u32 *cs;

 if (GEM_WARN_ON(table->size > table->n_entries))
  return -ENODEV;


 unused_value = table->table[I915_MOCS_PTE].l3cc_value;

 cs = intel_ring_begin(rq, 2 + table->n_entries);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 *cs++ = MI_LOAD_REGISTER_IMM(table->n_entries / 2);

 for (i = 0; i < table->size / 2; i++) {
  u16 low = get_entry_l3cc(table, 2 * i);
  u16 high = get_entry_l3cc(table, 2 * i + 1);

  *cs++ = i915_mmio_reg_offset(GEN9_LNCFCMOCS(i));
  *cs++ = l3cc_combine(table, low, high);
 }


 if (table->size & 0x01) {
  u16 low = get_entry_l3cc(table, 2 * i);

  *cs++ = i915_mmio_reg_offset(GEN9_LNCFCMOCS(i));
  *cs++ = l3cc_combine(table, low, unused_value);
  i++;
 }


 for (; i < table->n_entries / 2; i++) {
  *cs++ = i915_mmio_reg_offset(GEN9_LNCFCMOCS(i));
  *cs++ = l3cc_combine(table, unused_value, unused_value);
 }

 *cs++ = MI_NOOP;
 intel_ring_advance(rq, cs);

 return 0;
}
