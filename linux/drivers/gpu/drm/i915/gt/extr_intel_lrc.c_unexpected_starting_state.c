
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int ENGINE_READ_FW (struct intel_engine_cs*,int ) ;
 int RING_MI_MODE ;
 int STOP_RING ;

__attribute__((used)) static bool unexpected_starting_state(struct intel_engine_cs *engine)
{
 bool unexpected = 0;

 if (ENGINE_READ_FW(engine, RING_MI_MODE) & STOP_RING) {
  DRM_DEBUG_DRIVER("STOP_RING still set in RING_MI_MODE\n");
  unexpected = 1;
 }

 return unexpected;
}
