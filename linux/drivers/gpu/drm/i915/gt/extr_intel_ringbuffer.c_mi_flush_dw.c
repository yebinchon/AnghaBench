
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_request {int dummy; } ;


 int I915_GEM_HWS_SCRATCH_ADDR ;
 scalar_t__ IS_ERR (int*) ;
 int MI_FLUSH_DW ;
 int MI_FLUSH_DW_OP_STOREDW ;
 int MI_FLUSH_DW_STORE_INDEX ;
 int MI_FLUSH_DW_USE_GTT ;
 int MI_NOOP ;
 int PTR_ERR (int*) ;
 int intel_ring_advance (struct i915_request*,int*) ;
 int* intel_ring_begin (struct i915_request*,int) ;

__attribute__((used)) static int mi_flush_dw(struct i915_request *rq, u32 flags)
{
 u32 cmd, *cs;

 cs = intel_ring_begin(rq, 4);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 cmd = MI_FLUSH_DW;







 cmd |= MI_FLUSH_DW_STORE_INDEX | MI_FLUSH_DW_OP_STOREDW;







 cmd |= flags;

 *cs++ = cmd;
 *cs++ = I915_GEM_HWS_SCRATCH_ADDR | MI_FLUSH_DW_USE_GTT;
 *cs++ = 0;
 *cs++ = MI_NOOP;

 intel_ring_advance(rq, cs);

 return 0;
}
