
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;


 int IGT_IDLE_TIMEOUT ;
 int intel_engine_is_idle (struct intel_engine_cs*) ;
 scalar_t__ wait_for (int ,int ) ;

__attribute__((used)) static bool wait_for_idle(struct intel_engine_cs *engine)
{
 return wait_for(intel_engine_is_idle(engine), IGT_IDLE_TIMEOUT) == 0;
}
