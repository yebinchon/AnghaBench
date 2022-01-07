
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int seqno; int context; } ;
struct i915_request {TYPE_2__* engine; TYPE_1__ fence; } ;
struct TYPE_4__ {int gt; int name; } ;


 int EIO ;
 int GEM_TRACE (char*,int ,int ,int ) ;
 int GEM_TRACE_DUMP () ;
 int HZ ;
 int i915_request_put (struct i915_request*) ;
 scalar_t__ i915_request_wait (struct i915_request*,int ,int) ;
 int intel_gt_set_wedged (int ) ;

__attribute__((used)) static int active_request_put(struct i915_request *rq)
{
 int err = 0;

 if (!rq)
  return 0;

 if (i915_request_wait(rq, 0, 5 * HZ) < 0) {
  GEM_TRACE("%s timed out waiting for completion of fence %llx:%lld\n",
     rq->engine->name,
     rq->fence.context,
     rq->fence.seqno);
  GEM_TRACE_DUMP();

  intel_gt_set_wedged(rq->engine->gt);
  err = -EIO;
 }

 i915_request_put(rq);

 return err;
}
