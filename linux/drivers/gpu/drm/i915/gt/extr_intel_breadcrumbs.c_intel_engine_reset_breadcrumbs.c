
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_breadcrumbs {int irq_lock; scalar_t__ irq_enabled; } ;
struct intel_engine_cs {struct intel_breadcrumbs breadcrumbs; } ;


 int irq_disable (struct intel_engine_cs*) ;
 int irq_enable (struct intel_engine_cs*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine)
{
 struct intel_breadcrumbs *b = &engine->breadcrumbs;
 unsigned long flags;

 spin_lock_irqsave(&b->irq_lock, flags);

 if (b->irq_enabled)
  irq_enable(engine);
 else
  irq_disable(engine);

 spin_unlock_irqrestore(&b->irq_lock, flags);
}
