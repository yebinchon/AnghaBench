
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct i915_request {TYPE_1__* ring; } ;
struct TYPE_2__ {int emit; } ;


 int CACHELINE_BYTES ;
 int CACHELINE_DWORDS ;
 int GEM_BUG_ON (int) ;
 scalar_t__ IS_ERR (void*) ;
 int MI_NOOP ;
 int PTR_ERR (void*) ;
 int intel_ring_advance (struct i915_request*,void*) ;
 void* intel_ring_begin (struct i915_request*,int) ;
 int memset64 (void*,int,int) ;

int intel_ring_cacheline_align(struct i915_request *rq)
{
 int num_dwords;
 void *cs;

 num_dwords = (rq->ring->emit & (CACHELINE_BYTES - 1)) / sizeof(u32);
 if (num_dwords == 0)
  return 0;

 num_dwords = CACHELINE_DWORDS - num_dwords;
 GEM_BUG_ON(num_dwords & 1);

 cs = intel_ring_begin(rq, num_dwords);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 memset64(cs, (u64)MI_NOOP << 32 | MI_NOOP, num_dwords / 2);
 intel_ring_advance(rq, cs);

 GEM_BUG_ON(rq->ring->emit & (CACHELINE_BYTES - 1));
 return 0;
}
