
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_breadcrumbs {int irq_lock; scalar_t__ irq_armed; } ;
struct intel_engine_cs {struct intel_breadcrumbs breadcrumbs; } ;


 int __intel_breadcrumbs_disarm_irq (struct intel_breadcrumbs*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void intel_engine_disarm_breadcrumbs(struct intel_engine_cs *engine)
{
 struct intel_breadcrumbs *b = &engine->breadcrumbs;
 unsigned long flags;

 if (!b->irq_armed)
  return;

 spin_lock_irqsave(&b->irq_lock, flags);
 if (b->irq_armed)
  __intel_breadcrumbs_disarm_irq(b);
 spin_unlock_irqrestore(&b->irq_lock, flags);
}
