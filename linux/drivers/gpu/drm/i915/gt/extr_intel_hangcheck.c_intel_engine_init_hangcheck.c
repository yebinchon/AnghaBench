
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int action_timestamp; } ;
struct intel_engine_cs {TYPE_1__ hangcheck; } ;


 int jiffies ;
 int memset (TYPE_1__*,int ,int) ;

void intel_engine_init_hangcheck(struct intel_engine_cs *engine)
{
 memset(&engine->hangcheck, 0, sizeof(engine->hangcheck));
 engine->hangcheck.action_timestamp = jiffies;
}
