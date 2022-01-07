
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;
struct hangcheck {void* head; void* ring; int acthd; } ;


 void* ENGINE_READ (struct intel_engine_cs*,int ) ;
 int RING_HEAD ;
 int RING_START ;
 int intel_engine_get_active_head (struct intel_engine_cs*) ;

__attribute__((used)) static void hangcheck_load_sample(struct intel_engine_cs *engine,
      struct hangcheck *hc)
{
 hc->acthd = intel_engine_get_active_head(engine);
 hc->ring = ENGINE_READ(engine, RING_START);
 hc->head = ENGINE_READ(engine, RING_HEAD);
}
