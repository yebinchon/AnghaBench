
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_engine_cs {int mmio_base; } ;
struct i915_request {struct intel_engine_cs* engine; } ;
struct i915_ppgtt {int pd; } ;
struct TYPE_2__ {int ggtt_offset; } ;


 scalar_t__ IS_ERR (int *) ;
 void* MI_LOAD_REGISTER_IMM (int) ;
 int PP_DIR_DCLV_2G ;
 int PTR_ERR (int *) ;
 int RING_PP_DIR_BASE (int ) ;
 int RING_PP_DIR_DCLV (int ) ;
 void* i915_mmio_reg_offset (int ) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;
 TYPE_1__* px_base (int ) ;

__attribute__((used)) static int load_pd_dir(struct i915_request *rq, const struct i915_ppgtt *ppgtt)
{
 const struct intel_engine_cs * const engine = rq->engine;
 u32 *cs;

 cs = intel_ring_begin(rq, 6);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 *cs++ = MI_LOAD_REGISTER_IMM(1);
 *cs++ = i915_mmio_reg_offset(RING_PP_DIR_DCLV(engine->mmio_base));
 *cs++ = PP_DIR_DCLV_2G;

 *cs++ = MI_LOAD_REGISTER_IMM(1);
 *cs++ = i915_mmio_reg_offset(RING_PP_DIR_BASE(engine->mmio_base));
 *cs++ = px_base(ppgtt->pd)->ggtt_offset << 10;

 intel_ring_advance(rq, cs);

 return 0;
}
