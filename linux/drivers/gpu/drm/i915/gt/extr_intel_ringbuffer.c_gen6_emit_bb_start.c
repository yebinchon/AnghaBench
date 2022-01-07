
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i915_request {int dummy; } ;


 unsigned int I915_DISPATCH_SECURE ;
 scalar_t__ IS_ERR (int *) ;
 int MI_BATCH_BUFFER_START ;
 int MI_BATCH_NON_SECURE_I965 ;
 int PTR_ERR (int *) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;

__attribute__((used)) static int
gen6_emit_bb_start(struct i915_request *rq,
     u64 offset, u32 len,
     unsigned int dispatch_flags)
{
 u32 *cs;

 cs = intel_ring_begin(rq, 2);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 *cs++ = MI_BATCH_BUFFER_START | (dispatch_flags & I915_DISPATCH_SECURE ?
  0 : MI_BATCH_NON_SECURE_I965);

 *cs++ = offset;
 intel_ring_advance(rq, cs);

 return 0;
}
