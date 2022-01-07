
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_engine_cs {int i915; } ;


 int ENGINE_READ (struct intel_engine_cs const*,int ) ;
 int ENGINE_READ64 (struct intel_engine_cs const*,int ,int ) ;
 int INTEL_GEN (int ) ;
 int RING_BBADDR ;
 int RING_BBADDR_UDW ;

u64 intel_engine_get_last_batch_head(const struct intel_engine_cs *engine)
{
 u64 bbaddr;

 if (INTEL_GEN(engine->i915) >= 8)
  bbaddr = ENGINE_READ64(engine, RING_BBADDR, RING_BBADDR_UDW);
 else
  bbaddr = ENGINE_READ(engine, RING_BBADDR);

 return bbaddr;
}
