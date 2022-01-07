
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_request {int dummy; } ;


 int MI_INVALIDATE_BSD ;
 int MI_INVALIDATE_TLB ;
 int gen6_flush_dw (struct i915_request*,int ,int) ;

__attribute__((used)) static int gen6_bsd_ring_flush(struct i915_request *rq, u32 mode)
{
 return gen6_flush_dw(rq, mode, MI_INVALIDATE_TLB | MI_INVALIDATE_BSD);
}
