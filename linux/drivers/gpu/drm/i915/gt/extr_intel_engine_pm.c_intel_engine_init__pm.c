
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_runtime_pm {int dummy; } ;
struct intel_engine_cs {int wakeref; TYPE_1__* i915; } ;
struct TYPE_2__ {struct intel_runtime_pm runtime_pm; } ;


 int intel_wakeref_init (int *,struct intel_runtime_pm*,int *) ;
 int wf_ops ;

void intel_engine_init__pm(struct intel_engine_cs *engine)
{
 struct intel_runtime_pm *rpm = &engine->i915->runtime_pm;

 intel_wakeref_init(&engine->wakeref, rpm, &wf_ops);
}
