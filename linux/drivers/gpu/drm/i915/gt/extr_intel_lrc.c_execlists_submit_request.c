
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int lock; } ;
struct TYPE_5__ {int rb_root; } ;
struct TYPE_6__ {TYPE_1__ queue; } ;
struct intel_engine_cs {TYPE_3__ active; TYPE_2__ execlists; } ;
struct TYPE_8__ {int link; } ;
struct i915_request {TYPE_4__ sched; struct intel_engine_cs* engine; } ;


 int GEM_BUG_ON (int ) ;
 int RB_EMPTY_ROOT (int *) ;
 int list_empty (int *) ;
 int queue_request (struct intel_engine_cs*,TYPE_4__*,int ) ;
 int rq_prio (struct i915_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int submit_queue (struct intel_engine_cs*,struct i915_request*) ;

__attribute__((used)) static void execlists_submit_request(struct i915_request *request)
{
 struct intel_engine_cs *engine = request->engine;
 unsigned long flags;


 spin_lock_irqsave(&engine->active.lock, flags);

 queue_request(engine, &request->sched, rq_prio(request));

 GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
 GEM_BUG_ON(list_empty(&request->sched.link));

 submit_queue(engine, request);

 spin_unlock_irqrestore(&engine->active.lock, flags);
}
