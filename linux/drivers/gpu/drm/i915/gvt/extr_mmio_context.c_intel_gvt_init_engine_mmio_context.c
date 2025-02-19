
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctx_mmio_count; struct engine_mmio* mmio; void* tlb_mmio_offset_list_cnt; void* tlb_mmio_offset_list; void* mocs_mmio_offset_list_cnt; void* mocs_mmio_offset_list; } ;
struct intel_gvt {TYPE_1__ engine_mmio_list; int dev_priv; } ;
struct TYPE_4__ {int reg; } ;
struct engine_mmio {size_t ring_id; TYPE_2__ reg; scalar_t__ in_context; } ;


 void* ARRAY_SIZE (void*) ;
 int INTEL_GEN (int ) ;
 struct engine_mmio* gen8_engine_mmio_list ;
 void* gen8_tlb_mmio_offset_list ;
 struct engine_mmio* gen9_engine_mmio_list ;
 void* gen9_mocs_mmio_offset_list ;
 scalar_t__ i915_mmio_reg_valid (TYPE_2__) ;
 int intel_gvt_mmio_set_in_ctx (struct intel_gvt*,int ) ;

void intel_gvt_init_engine_mmio_context(struct intel_gvt *gvt)
{
 struct engine_mmio *mmio;

 if (INTEL_GEN(gvt->dev_priv) >= 9) {
  gvt->engine_mmio_list.mmio = gen9_engine_mmio_list;
  gvt->engine_mmio_list.tlb_mmio_offset_list = gen8_tlb_mmio_offset_list;
  gvt->engine_mmio_list.tlb_mmio_offset_list_cnt = ARRAY_SIZE(gen8_tlb_mmio_offset_list);
  gvt->engine_mmio_list.mocs_mmio_offset_list = gen9_mocs_mmio_offset_list;
  gvt->engine_mmio_list.mocs_mmio_offset_list_cnt = ARRAY_SIZE(gen9_mocs_mmio_offset_list);
 } else {
  gvt->engine_mmio_list.mmio = gen8_engine_mmio_list;
  gvt->engine_mmio_list.tlb_mmio_offset_list = gen8_tlb_mmio_offset_list;
  gvt->engine_mmio_list.tlb_mmio_offset_list_cnt = ARRAY_SIZE(gen8_tlb_mmio_offset_list);
 }

 for (mmio = gvt->engine_mmio_list.mmio;
      i915_mmio_reg_valid(mmio->reg); mmio++) {
  if (mmio->in_context) {
   gvt->engine_mmio_list.ctx_mmio_count[mmio->ring_id]++;
   intel_gvt_mmio_set_in_ctx(gvt, mmio->reg.reg);
  }
 }
}
