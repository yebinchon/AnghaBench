
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_breadcrumbs {int irq_work; int signalers; int irq_lock; } ;
struct intel_engine_cs {struct intel_breadcrumbs breadcrumbs; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_irq_work (int *,int ) ;
 int signal_irq_work ;
 int spin_lock_init (int *) ;

void intel_engine_init_breadcrumbs(struct intel_engine_cs *engine)
{
 struct intel_breadcrumbs *b = &engine->breadcrumbs;

 spin_lock_init(&b->irq_lock);
 INIT_LIST_HEAD(&b->signalers);

 init_irq_work(&b->irq_work, signal_irq_work);
}
