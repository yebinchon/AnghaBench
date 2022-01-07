
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;


 int intel_engine_reset (struct intel_engine_cs*,char*) ;

__attribute__((used)) static int do_engine_reset(struct intel_engine_cs *engine)
{
 return intel_engine_reset(engine, "live_workarounds");
}
