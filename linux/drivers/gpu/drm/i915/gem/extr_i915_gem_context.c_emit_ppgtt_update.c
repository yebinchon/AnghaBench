
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_engine_cs {int i915; int mmio_base; } ;
struct i915_request {struct intel_engine_cs* engine; TYPE_1__* hw_context; } ;
struct i915_ppgtt {int pd; } ;
struct i915_address_space {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct i915_address_space* vm; } ;


 int GEN8_3LVL_PDPES ;
 int GEN8_RING_PDP_LDW (int ,int) ;
 int GEN8_RING_PDP_UDW (int ,int) ;
 scalar_t__ HAS_LOGICAL_RING_CONTEXTS (int ) ;
 scalar_t__ IS_ERR (int *) ;
 void* MI_LOAD_REGISTER_IMM (int) ;
 void* MI_NOOP ;
 int PTR_ERR (int *) ;
 int gen6_ppgtt_pin (struct i915_ppgtt*) ;
 void* i915_mmio_reg_offset (int ) ;
 int i915_page_dir_dma_addr (struct i915_ppgtt*,int) ;
 scalar_t__ i915_vm_is_4lvl (struct i915_address_space*) ;
 struct i915_ppgtt* i915_vm_to_ppgtt (struct i915_address_space*) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;
 void* lower_32_bits (int const) ;
 int px_dma (int ) ;
 void* upper_32_bits (int const) ;

__attribute__((used)) static int emit_ppgtt_update(struct i915_request *rq, void *data)
{
 struct i915_address_space *vm = rq->hw_context->vm;
 struct intel_engine_cs *engine = rq->engine;
 u32 base = engine->mmio_base;
 u32 *cs;
 int i;

 if (i915_vm_is_4lvl(vm)) {
  struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
  const dma_addr_t pd_daddr = px_dma(ppgtt->pd);

  cs = intel_ring_begin(rq, 6);
  if (IS_ERR(cs))
   return PTR_ERR(cs);

  *cs++ = MI_LOAD_REGISTER_IMM(2);

  *cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_UDW(base, 0));
  *cs++ = upper_32_bits(pd_daddr);
  *cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_LDW(base, 0));
  *cs++ = lower_32_bits(pd_daddr);

  *cs++ = MI_NOOP;
  intel_ring_advance(rq, cs);
 } else if (HAS_LOGICAL_RING_CONTEXTS(engine->i915)) {
  struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);

  cs = intel_ring_begin(rq, 4 * GEN8_3LVL_PDPES + 2);
  if (IS_ERR(cs))
   return PTR_ERR(cs);

  *cs++ = MI_LOAD_REGISTER_IMM(2 * GEN8_3LVL_PDPES);
  for (i = GEN8_3LVL_PDPES; i--; ) {
   const dma_addr_t pd_daddr = i915_page_dir_dma_addr(ppgtt, i);

   *cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_UDW(base, i));
   *cs++ = upper_32_bits(pd_daddr);
   *cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_LDW(base, i));
   *cs++ = lower_32_bits(pd_daddr);
  }
  *cs++ = MI_NOOP;
  intel_ring_advance(rq, cs);
 } else {

  gen6_ppgtt_pin(i915_vm_to_ppgtt(vm));
 }

 return 0;
}
