
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int lock; } ;
struct TYPE_8__ {int tasklet; int queue_priority_hint; } ;
struct TYPE_10__ {scalar_t__ submit_request; TYPE_4__ active; TYPE_3__ execlists; int name; } ;
struct virtual_engine {TYPE_5__ base; struct i915_request* request; } ;
struct TYPE_7__ {int link; } ;
struct TYPE_6__ {int seqno; int context; } ;
struct i915_request {TYPE_2__ sched; TYPE_1__ fence; int engine; } ;


 int GEM_BUG_ON (int) ;
 int GEM_TRACE (char*,int ,int ,int ) ;
 int INT_MIN ;
 int __i915_request_submit (struct i915_request*) ;
 scalar_t__ i915_request_completed (struct i915_request*) ;
 struct i915_request* i915_request_get (struct i915_request*) ;
 int i915_request_put (struct i915_request*) ;
 int list_empty (int ) ;
 int list_move_tail (int *,int ) ;
 int rq_prio (struct i915_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 struct virtual_engine* to_virtual_engine (int ) ;
 int virtual_queue (struct virtual_engine*) ;

__attribute__((used)) static void virtual_submit_request(struct i915_request *rq)
{
 struct virtual_engine *ve = to_virtual_engine(rq->engine);
 struct i915_request *old;
 unsigned long flags;

 GEM_TRACE("%s: rq=%llx:%lld\n",
    ve->base.name,
    rq->fence.context,
    rq->fence.seqno);

 GEM_BUG_ON(ve->base.submit_request != virtual_submit_request);

 spin_lock_irqsave(&ve->base.active.lock, flags);

 old = ve->request;
 if (old) {
  GEM_BUG_ON(!i915_request_completed(old));
  __i915_request_submit(old);
  i915_request_put(old);
 }

 if (i915_request_completed(rq)) {
  __i915_request_submit(rq);

  ve->base.execlists.queue_priority_hint = INT_MIN;
  ve->request = ((void*)0);
 } else {
  ve->base.execlists.queue_priority_hint = rq_prio(rq);
  ve->request = i915_request_get(rq);

  GEM_BUG_ON(!list_empty(virtual_queue(ve)));
  list_move_tail(&rq->sched.link, virtual_queue(ve));

  tasklet_schedule(&ve->base.execlists.tasklet);
 }

 spin_unlock_irqrestore(&ve->base.active.lock, flags);
}
