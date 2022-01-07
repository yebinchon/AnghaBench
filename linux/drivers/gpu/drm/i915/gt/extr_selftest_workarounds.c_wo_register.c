
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct intel_engine_cs {int i915; } ;
typedef enum intel_platform { ____Placeholder_intel_platform } intel_platform ;
struct TYPE_5__ {int platform; } ;
struct TYPE_4__ {int platform; scalar_t__ reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_2__* INTEL_INFO (int ) ;
 scalar_t__ RING_FORCE_TO_NONPRIV_ACCESS_MASK ;
 scalar_t__ RING_FORCE_TO_NONPRIV_ACCESS_WR ;
 TYPE_1__* wo_registers ;

__attribute__((used)) static bool wo_register(struct intel_engine_cs *engine, u32 reg)
{
 enum intel_platform platform = INTEL_INFO(engine->i915)->platform;
 int i;

 if ((reg & RING_FORCE_TO_NONPRIV_ACCESS_MASK) ==
      RING_FORCE_TO_NONPRIV_ACCESS_WR)
  return 1;

 for (i = 0; i < ARRAY_SIZE(wo_registers); i++) {
  if (wo_registers[i].platform == platform &&
      wo_registers[i].reg == reg)
   return 1;
 }

 return 0;
}
