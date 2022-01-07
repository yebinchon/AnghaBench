
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;


 int intel_engine_set_hwsp_writemask (struct intel_engine_cs*,unsigned int) ;

__attribute__((used)) static void intel_engine_sanitize_mmio(struct intel_engine_cs *engine)
{

 intel_engine_set_hwsp_writemask(engine, ~0u);
}
