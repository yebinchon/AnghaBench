
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i915_request {int dummy; } ;


 int BIT (int) ;
 unsigned int const I915_DISPATCH_SECURE ;
 scalar_t__ IS_ERR (int *) ;
 int MI_ARB_DISABLE ;
 int MI_ARB_ON_OFF ;
 int MI_BATCH_BUFFER_START_GEN8 ;
 int PTR_ERR (int *) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int gen8_emit_bb_start(struct i915_request *rq,
         u64 offset, u32 len,
         const unsigned int flags)
{
 u32 *cs;

 cs = intel_ring_begin(rq, 4);
 if (IS_ERR(cs))
  return PTR_ERR(cs);
 *cs++ = MI_ARB_ON_OFF | MI_ARB_DISABLE;


 *cs++ = MI_BATCH_BUFFER_START_GEN8 |
  (flags & I915_DISPATCH_SECURE ? 0 : BIT(8));
 *cs++ = lower_32_bits(offset);
 *cs++ = upper_32_bits(offset);

 intel_ring_advance(rq, cs);

 return 0;
}
