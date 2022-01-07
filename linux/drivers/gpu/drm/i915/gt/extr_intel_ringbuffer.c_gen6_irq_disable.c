
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int irq_enable_mask; int gt; int irq_keep_mask; } ;


 int ENGINE_WRITE (struct intel_engine_cs*,int ,int ) ;
 int RING_IMR ;
 int gen5_gt_disable_irq (int ,int ) ;

__attribute__((used)) static void
gen6_irq_disable(struct intel_engine_cs *engine)
{
 ENGINE_WRITE(engine, RING_IMR, ~engine->irq_keep_mask);
 gen5_gt_disable_irq(engine->gt, engine->irq_enable_mask);
}
