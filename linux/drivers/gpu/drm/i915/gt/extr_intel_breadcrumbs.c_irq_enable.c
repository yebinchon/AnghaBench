
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_engine_cs {TYPE_1__* gt; int (* irq_enable ) (struct intel_engine_cs*) ;} ;
struct TYPE_2__ {int irq_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct intel_engine_cs*) ;

__attribute__((used)) static void irq_enable(struct intel_engine_cs *engine)
{
 if (!engine->irq_enable)
  return;


 spin_lock(&engine->gt->irq_lock);
 engine->irq_enable(engine);
 spin_unlock(&engine->gt->irq_lock);
}
