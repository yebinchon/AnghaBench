
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_engine_cs {int gt; int mmio_base; } ;
struct i915_request {struct intel_engine_cs* engine; } ;


 int INTEL_GT_SCRATCH_FIELD_DEFAULT ;
 scalar_t__ IS_ERR (int *) ;
 int MI_NOOP ;
 int MI_SRM_LRM_GLOBAL_GTT ;
 int MI_STORE_REGISTER_MEM ;
 int PTR_ERR (int *) ;
 int RING_PP_DIR_BASE (int ) ;
 int i915_mmio_reg_offset (int ) ;
 int intel_gt_scratch_offset (int ,int ) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;

__attribute__((used)) static int flush_pd_dir(struct i915_request *rq)
{
 const struct intel_engine_cs * const engine = rq->engine;
 u32 *cs;

 cs = intel_ring_begin(rq, 4);
 if (IS_ERR(cs))
  return PTR_ERR(cs);


 *cs++ = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
 *cs++ = i915_mmio_reg_offset(RING_PP_DIR_BASE(engine->mmio_base));
 *cs++ = intel_gt_scratch_offset(rq->engine->gt,
     INTEL_GT_SCRATCH_FIELD_DEFAULT);
 *cs++ = MI_NOOP;

 intel_ring_advance(rq, cs);
 return 0;
}
