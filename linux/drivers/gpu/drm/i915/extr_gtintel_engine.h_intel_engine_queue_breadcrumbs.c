
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_work; } ;
struct intel_engine_cs {TYPE_1__ breadcrumbs; } ;


 int irq_work_queue (int *) ;

__attribute__((used)) static inline void
intel_engine_queue_breadcrumbs(struct intel_engine_cs *engine)
{
 irq_work_queue(&engine->breadcrumbs.irq_work);
}
