
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ acthd; int instdone; } ;
struct intel_engine_cs {TYPE_1__ hangcheck; } ;
typedef enum intel_engine_hangcheck_action { ____Placeholder_intel_engine_hangcheck_action } intel_engine_hangcheck_action ;


 int ENGINE_ACTIVE_HEAD ;
 int ENGINE_ACTIVE_SUBUNITS ;
 int ENGINE_DEAD ;
 int memset (int *,int ,int) ;
 int subunits_stuck (struct intel_engine_cs*) ;

__attribute__((used)) static enum intel_engine_hangcheck_action
head_stuck(struct intel_engine_cs *engine, u64 acthd)
{
 if (acthd != engine->hangcheck.acthd) {


  memset(&engine->hangcheck.instdone, 0,
         sizeof(engine->hangcheck.instdone));

  return ENGINE_ACTIVE_HEAD;
 }

 if (!subunits_stuck(engine))
  return ENGINE_ACTIVE_SUBUNITS;

 return ENGINE_DEAD;
}
