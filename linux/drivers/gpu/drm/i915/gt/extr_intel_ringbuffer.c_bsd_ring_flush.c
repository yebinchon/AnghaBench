
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_request {int dummy; } ;


 scalar_t__ IS_ERR (int *) ;
 int MI_FLUSH ;
 int MI_NOOP ;
 int PTR_ERR (int *) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;

__attribute__((used)) static int
bsd_ring_flush(struct i915_request *rq, u32 mode)
{
 u32 *cs;

 cs = intel_ring_begin(rq, 2);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 *cs++ = MI_FLUSH;
 *cs++ = MI_NOOP;
 intel_ring_advance(rq, cs);
 return 0;
}
