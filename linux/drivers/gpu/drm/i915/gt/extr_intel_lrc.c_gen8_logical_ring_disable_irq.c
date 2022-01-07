
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int irq_keep_mask; } ;


 int ENGINE_WRITE (struct intel_engine_cs*,int ,int ) ;
 int RING_IMR ;

__attribute__((used)) static void gen8_logical_ring_disable_irq(struct intel_engine_cs *engine)
{
 ENGINE_WRITE(engine, RING_IMR, ~engine->irq_keep_mask);
}
