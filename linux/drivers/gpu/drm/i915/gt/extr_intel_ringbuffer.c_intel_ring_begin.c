
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct intel_ring {unsigned int effective_size; unsigned int emit; int size; unsigned int space; int * vaddr; } ;
struct i915_request {unsigned int const reserved_space; int timeline; struct intel_ring* ring; } ;


 int * ERR_PTR (int) ;
 int GEM_BUG_ON (int) ;
 int GEM_DEBUG_EXEC (int ) ;
 int IS_ALIGNED (unsigned int,int) ;
 int POISON_INUSE ;
 int memset32 (int *,int ,unsigned int const) ;
 int memset64 (int *,int ,unsigned int) ;
 scalar_t__ unlikely (unsigned int) ;
 int wait_for_space (struct intel_ring*,int ,unsigned int) ;

u32 *intel_ring_begin(struct i915_request *rq, unsigned int num_dwords)
{
 struct intel_ring *ring = rq->ring;
 const unsigned int remain_usable = ring->effective_size - ring->emit;
 const unsigned int bytes = num_dwords * sizeof(u32);
 unsigned int need_wrap = 0;
 unsigned int total_bytes;
 u32 *cs;


 GEM_BUG_ON(num_dwords & 1);

 total_bytes = bytes + rq->reserved_space;
 GEM_BUG_ON(total_bytes > ring->effective_size);

 if (unlikely(total_bytes > remain_usable)) {
  const int remain_actual = ring->size - ring->emit;

  if (bytes > remain_usable) {





   total_bytes += remain_actual;
   need_wrap = remain_actual | 1;
  } else {






   total_bytes = rq->reserved_space + remain_actual;
  }
 }

 if (unlikely(total_bytes > ring->space)) {
  int ret;
  GEM_BUG_ON(!rq->reserved_space);

  ret = wait_for_space(ring, rq->timeline, total_bytes);
  if (unlikely(ret))
   return ERR_PTR(ret);
 }

 if (unlikely(need_wrap)) {
  need_wrap &= ~1;
  GEM_BUG_ON(need_wrap > ring->space);
  GEM_BUG_ON(ring->emit + need_wrap > ring->size);
  GEM_BUG_ON(!IS_ALIGNED(need_wrap, sizeof(u64)));


  memset64(ring->vaddr + ring->emit, 0, need_wrap / sizeof(u64));
  ring->space -= need_wrap;
  ring->emit = 0;
 }

 GEM_BUG_ON(ring->emit > ring->size - bytes);
 GEM_BUG_ON(ring->space < bytes);
 cs = ring->vaddr + ring->emit;
 GEM_DEBUG_EXEC(memset32(cs, POISON_INUSE, bytes / sizeof(*cs)));
 ring->emit += bytes;
 ring->space -= bytes;

 return cs;
}
