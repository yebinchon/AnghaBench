
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct i915_request {TYPE_1__* ring; } ;
struct TYPE_2__ {int vaddr; scalar_t__ size; } ;


 int GEM_BUG_ON (int) ;
 scalar_t__ intel_ring_wrap (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static inline u32 intel_ring_offset(const struct i915_request *rq, void *addr)
{

 u32 offset = addr - rq->ring->vaddr;
 GEM_BUG_ON(offset > rq->ring->size);
 return intel_ring_wrap(rq->ring, offset);
}
