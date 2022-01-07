
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tasklet; struct i915_request** active; } ;
struct intel_engine_cs {TYPE_1__ execlists; } ;
struct i915_request {int dummy; } ;


 int i915_scheduler_need_preempt (int,int ) ;
 int rq_prio (struct i915_request const*) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void kick_submission(struct intel_engine_cs *engine, int prio)
{
 const struct i915_request *inflight = *engine->execlists.active;
 if (!inflight || !i915_scheduler_need_preempt(prio, rq_prio(inflight)))
  return;

 tasklet_hi_schedule(&engine->execlists.tasklet);
}
