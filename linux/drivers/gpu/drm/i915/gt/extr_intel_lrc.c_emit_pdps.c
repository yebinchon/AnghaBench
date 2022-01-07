
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_engine_cs {int (* emit_flush ) (struct i915_request*,int ) ;int mmio_base; } ;
struct i915_request {int i915; TYPE_1__* hw_context; struct intel_engine_cs* engine; } ;
struct i915_ppgtt {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int vm; } ;


 int EMIT_FLUSH ;
 int EMIT_INVALIDATE ;
 int GEM_BUG_ON (int ) ;
 int GEN8_3LVL_PDPES ;
 int GEN8_RING_PDP_LDW (int ,int) ;
 int GEN8_RING_PDP_UDW (int ,int) ;
 scalar_t__ IS_ERR (int *) ;
 int MI_LOAD_REGISTER_IMM (int) ;
 int MI_LRI_FORCE_POSTED ;
 int MI_NOOP ;
 int PTR_ERR (int *) ;
 void* i915_mmio_reg_offset (int ) ;
 int i915_page_dir_dma_addr (struct i915_ppgtt* const,int) ;
 struct i915_ppgtt* i915_vm_to_ppgtt (int ) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;
 int intel_vgpu_active (int ) ;
 int lower_32_bits (int const) ;
 int stub1 (struct i915_request*,int ) ;
 int stub2 (struct i915_request*,int ) ;
 int stub3 (struct i915_request*,int ) ;
 int stub4 (struct i915_request*,int ) ;
 int upper_32_bits (int const) ;

__attribute__((used)) static int emit_pdps(struct i915_request *rq)
{
 const struct intel_engine_cs * const engine = rq->engine;
 struct i915_ppgtt * const ppgtt = i915_vm_to_ppgtt(rq->hw_context->vm);
 int err, i;
 u32 *cs;

 GEM_BUG_ON(intel_vgpu_active(rq->i915));
 err = engine->emit_flush(rq, EMIT_FLUSH);
 if (err)
  return err;


 err = engine->emit_flush(rq, EMIT_INVALIDATE);
 if (err)
  return err;

 cs = intel_ring_begin(rq, 4 * GEN8_3LVL_PDPES + 2);
 if (IS_ERR(cs))
  return PTR_ERR(cs);


 *cs++ = MI_LOAD_REGISTER_IMM(2 * GEN8_3LVL_PDPES) | MI_LRI_FORCE_POSTED;
 for (i = GEN8_3LVL_PDPES; i--; ) {
  const dma_addr_t pd_daddr = i915_page_dir_dma_addr(ppgtt, i);
  u32 base = engine->mmio_base;

  *cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_UDW(base, i));
  *cs++ = upper_32_bits(pd_daddr);
  *cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_LDW(base, i));
  *cs++ = lower_32_bits(pd_daddr);
 }
 *cs++ = MI_NOOP;

 intel_ring_advance(rq, cs);


 err = engine->emit_flush(rq, EMIT_FLUSH);
 if (err)
  return err;


 return engine->emit_flush(rq, EMIT_INVALIDATE);
}
