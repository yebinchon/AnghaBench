
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct i915_request {TYPE_1__* ring; int engine; } ;
struct TYPE_2__ {int vma; } ;


 scalar_t__ ENGINE_READ (int ,int ) ;
 int RING_START ;
 scalar_t__ i915_ggtt_offset (int ) ;

__attribute__((used)) static bool match_ring(struct i915_request *rq)
{
 u32 ring = ENGINE_READ(rq->engine, RING_START);

 return ring == i915_ggtt_offset(rq->ring->vma);
}
