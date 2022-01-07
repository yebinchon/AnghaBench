
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;


 int GEN6_RING_FAULT_REG_POSTING_READ (struct intel_engine_cs*) ;
 int GEN6_RING_FAULT_REG_RMW (struct intel_engine_cs*,int ,int ) ;
 int RING_FAULT_VALID ;

__attribute__((used)) static void gen8_clear_engine_error_register(struct intel_engine_cs *engine)
{
 GEN6_RING_FAULT_REG_RMW(engine, RING_FAULT_VALID, 0);
 GEN6_RING_FAULT_REG_POSTING_READ(engine);
}
