
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;


 int intel_engine_breadcrumbs_irq (struct intel_engine_cs*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;

void intel_engine_signal_breadcrumbs(struct intel_engine_cs *engine)
{
 local_irq_disable();
 intel_engine_breadcrumbs_irq(engine);
 local_irq_enable();
}
