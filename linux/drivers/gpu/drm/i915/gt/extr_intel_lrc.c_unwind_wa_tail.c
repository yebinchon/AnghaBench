
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int tail; int ring; scalar_t__ wa_tail; } ;


 scalar_t__ WA_TAIL_BYTES ;
 int assert_ring_tail_valid (int ,int ) ;
 int intel_ring_wrap (int ,scalar_t__) ;

__attribute__((used)) static void unwind_wa_tail(struct i915_request *rq)
{
 rq->tail = intel_ring_wrap(rq->ring, rq->wa_tail - WA_TAIL_BYTES);
 assert_ring_tail_valid(rq->ring, rq->tail);
}
