
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i915_request {TYPE_1__* ring; } ;
struct TYPE_2__ {int emit; int * vaddr; } ;


 int GEM_BUG_ON (int) ;

__attribute__((used)) static inline void intel_ring_advance(struct i915_request *rq, u32 *cs)
{
 GEM_BUG_ON((rq->ring->vaddr + rq->ring->emit) != cs);
}
