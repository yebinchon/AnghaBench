
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int finish; int reset; int prepare; } ;
struct TYPE_5__ {int func; } ;
struct TYPE_6__ {TYPE_2__ tasklet; } ;
struct intel_engine_cs {scalar_t__ irq_disable; scalar_t__ irq_enable; int flags; int cancel_requests; TYPE_1__ reset; int * unpark; int park; TYPE_3__ execlists; } ;


 int GEM_BUG_ON (int) ;
 int I915_ENGINE_NEEDS_BREADCRUMB_TASKLET ;
 int I915_ENGINE_SUPPORTS_STATS ;
 int guc_cancel_requests ;
 int guc_reset ;
 int guc_reset_finish ;
 int guc_reset_prepare ;
 int guc_submission_tasklet ;
 int intel_execlists_set_default_submission (struct intel_engine_cs*) ;

__attribute__((used)) static void guc_set_default_submission(struct intel_engine_cs *engine)
{
 intel_execlists_set_default_submission(engine);

 engine->execlists.tasklet.func = guc_submission_tasklet;


 engine->park = engine->unpark = ((void*)0);

 engine->reset.prepare = guc_reset_prepare;
 engine->reset.reset = guc_reset;
 engine->reset.finish = guc_reset_finish;

 engine->cancel_requests = guc_cancel_requests;

 engine->flags &= ~I915_ENGINE_SUPPORTS_STATS;
 engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;







 GEM_BUG_ON(engine->irq_enable || engine->irq_disable);
}
