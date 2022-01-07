
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tasklet; } ;
struct intel_engine_cs {TYPE_1__ execlists; } ;


 int GT_CONTEXT_SWITCH_INTERRUPT ;
 int GT_RENDER_USER_INTERRUPT ;
 int intel_engine_breadcrumbs_irq (struct intel_engine_cs*) ;
 int intel_engine_needs_breadcrumb_tasklet (struct intel_engine_cs*) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void
cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
{
 bool tasklet = 0;

 if (iir & GT_CONTEXT_SWITCH_INTERRUPT)
  tasklet = 1;

 if (iir & GT_RENDER_USER_INTERRUPT) {
  intel_engine_breadcrumbs_irq(engine);
  tasklet |= intel_engine_needs_breadcrumb_tasklet(engine);
 }

 if (tasklet)
  tasklet_hi_schedule(&engine->execlists.tasklet);
}
