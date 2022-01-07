
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int irq_enable_mask; int gt; } ;


 int gen5_gt_enable_irq (int ,int ) ;

__attribute__((used)) static void
gen5_irq_enable(struct intel_engine_cs *engine)
{
 gen5_gt_enable_irq(engine->gt, engine->irq_enable_mask);
}
