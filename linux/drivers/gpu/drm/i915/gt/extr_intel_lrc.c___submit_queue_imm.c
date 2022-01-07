
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ func; } ;
struct intel_engine_execlists {TYPE_1__ tasklet; } ;
struct intel_engine_cs {struct intel_engine_execlists execlists; } ;


 int __execlists_submission_tasklet (struct intel_engine_cs*) ;
 scalar_t__ execlists_submission_tasklet ;
 scalar_t__ reset_in_progress (struct intel_engine_execlists* const) ;
 int tasklet_hi_schedule (TYPE_1__*) ;

__attribute__((used)) static void __submit_queue_imm(struct intel_engine_cs *engine)
{
 struct intel_engine_execlists * const execlists = &engine->execlists;

 if (reset_in_progress(execlists))
  return;

 if (execlists->tasklet.func == execlists_submission_tasklet)
  __execlists_submission_tasklet(engine);
 else
  tasklet_hi_schedule(&execlists->tasklet);
}
