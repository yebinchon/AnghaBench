
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seqno; } ;
struct i915_request {TYPE_1__ fence; } ;
struct hang {int dummy; } ;


 int hws_seqno (struct hang*,struct i915_request*) ;
 int i915_seqno_passed (int ,int ) ;
 scalar_t__ wait_for (int ,int) ;
 scalar_t__ wait_for_us (int ,int) ;

__attribute__((used)) static bool wait_until_running(struct hang *h, struct i915_request *rq)
{
 return !(wait_for_us(i915_seqno_passed(hws_seqno(h, rq),
            rq->fence.seqno),
        10) &&
   wait_for(i915_seqno_passed(hws_seqno(h, rq),
         rq->fence.seqno),
     1000));
}
