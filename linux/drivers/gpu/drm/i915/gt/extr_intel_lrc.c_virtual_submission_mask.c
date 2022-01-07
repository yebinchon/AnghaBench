
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int queue_priority_hint; } ;
struct TYPE_7__ {TYPE_2__ execlists; int name; } ;
struct virtual_engine {TYPE_3__ base; TYPE_4__** siblings; int request; } ;
struct TYPE_5__ {int seqno; int context; } ;
struct i915_request {TYPE_1__ fence; scalar_t__ execution_mask; } ;
typedef scalar_t__ intel_engine_mask_t ;
struct TYPE_8__ {scalar_t__ mask; } ;


 int ENODEV ;
 int GEM_TRACE (char*,int ,int ,int ,scalar_t__,int ) ;
 struct i915_request* READ_ONCE (int ) ;
 int i915_request_skip (struct i915_request*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
{
 struct i915_request *rq;
 intel_engine_mask_t mask;

 rq = READ_ONCE(ve->request);
 if (!rq)
  return 0;


 mask = rq->execution_mask;
 if (unlikely(!mask)) {

  i915_request_skip(rq, -ENODEV);
  mask = ve->siblings[0]->mask;
 }

 GEM_TRACE("%s: rq=%llx:%lld, mask=%x, prio=%d\n",
    ve->base.name,
    rq->fence.context, rq->fence.seqno,
    mask, ve->base.execlists.queue_priority_hint);

 return mask;
}
