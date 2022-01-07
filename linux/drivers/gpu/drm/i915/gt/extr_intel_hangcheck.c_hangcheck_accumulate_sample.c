
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ action_timestamp; int instdone; } ;
struct intel_engine_cs {TYPE_1__ hangcheck; } ;
struct hangcheck {int action; void* wedged; void* stalled; int acthd; } ;
 unsigned long I915_ENGINE_DEAD_TIMEOUT ;
 scalar_t__ I915_ENGINE_WEDGED_TIMEOUT ;
 unsigned long I915_SEQNO_DEAD_TIMEOUT ;
 int MISSING_CASE (int) ;
 int hangcheck_get_action (struct intel_engine_cs*,struct hangcheck*) ;
 scalar_t__ jiffies ;
 int memset (int *,int ,int) ;
 void* time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void hangcheck_accumulate_sample(struct intel_engine_cs *engine,
     struct hangcheck *hc)
{
 unsigned long timeout = I915_ENGINE_DEAD_TIMEOUT;

 hc->action = hangcheck_get_action(engine, hc);
 switch (hc->action) {
 case 130:
 case 133:

  hc->acthd = 0;

  memset(&engine->hangcheck.instdone, 0,
         sizeof(engine->hangcheck.instdone));


 case 128:
 case 129:
  engine->hangcheck.action_timestamp = jiffies;
  break;

 case 134:
 case 132:




  timeout = I915_SEQNO_DEAD_TIMEOUT;
  break;

 case 131:
  break;

 default:
  MISSING_CASE(hc->action);
 }

 hc->stalled = time_after(jiffies,
     engine->hangcheck.action_timestamp + timeout);
 hc->wedged = time_after(jiffies,
     engine->hangcheck.action_timestamp +
     I915_ENGINE_WEDGED_TIMEOUT);
}
