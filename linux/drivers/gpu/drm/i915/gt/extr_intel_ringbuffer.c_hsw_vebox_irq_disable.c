
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int irq_enable_mask; int gt; } ;


 int ENGINE_WRITE (struct intel_engine_cs*,int ,int ) ;
 int RING_IMR ;
 int gen6_gt_pm_mask_irq (int ,int ) ;

__attribute__((used)) static void
hsw_vebox_irq_disable(struct intel_engine_cs *engine)
{
 ENGINE_WRITE(engine, RING_IMR, ~0);
 gen6_gt_pm_mask_irq(engine->gt, engine->irq_enable_mask);
}
