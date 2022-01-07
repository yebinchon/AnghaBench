
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_engine_cs {TYPE_1__* i915; int uncore; int irq_enable_mask; } ;
struct TYPE_2__ {int irq_mask; } ;


 int GEN2_IMR ;
 int intel_uncore_write (int ,int ,int ) ;

__attribute__((used)) static void
i9xx_irq_disable(struct intel_engine_cs *engine)
{
 engine->i915->irq_mask |= engine->irq_enable_mask;
 intel_uncore_write(engine->uncore, GEN2_IMR, engine->i915->irq_mask);
}
