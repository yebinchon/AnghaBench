
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ last_ring; scalar_t__ last_head; } ;
struct intel_engine_cs {TYPE_1__ hangcheck; } ;
struct hangcheck {scalar_t__ ring; scalar_t__ head; int acthd; } ;
typedef enum intel_engine_hangcheck_action { ____Placeholder_intel_engine_hangcheck_action } intel_engine_hangcheck_action ;


 int ENGINE_ACTIVE_SEQNO ;
 int ENGINE_IDLE ;
 int engine_stuck (struct intel_engine_cs*,int ) ;
 scalar_t__ intel_engine_is_idle (struct intel_engine_cs*) ;

__attribute__((used)) static enum intel_engine_hangcheck_action
hangcheck_get_action(struct intel_engine_cs *engine,
       const struct hangcheck *hc)
{
 if (intel_engine_is_idle(engine))
  return ENGINE_IDLE;

 if (engine->hangcheck.last_ring != hc->ring)
  return ENGINE_ACTIVE_SEQNO;

 if (engine->hangcheck.last_head != hc->head)
  return ENGINE_ACTIVE_SEQNO;

 return engine_stuck(engine, hc->acthd);
}
