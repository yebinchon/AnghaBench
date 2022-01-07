
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int mmio_base; int uncore; } ;


 int RESET_CTL_REQUEST_RESET ;
 int RING_RESET_CTL (int ) ;
 int _MASKED_BIT_DISABLE (int ) ;
 int intel_uncore_write_fw (int ,int ,int ) ;

__attribute__((used)) static void gen8_engine_reset_cancel(struct intel_engine_cs *engine)
{
 intel_uncore_write_fw(engine->uncore,
         RING_RESET_CTL(engine->mmio_base),
         _MASKED_BIT_DISABLE(RESET_CTL_REQUEST_RESET));
}
