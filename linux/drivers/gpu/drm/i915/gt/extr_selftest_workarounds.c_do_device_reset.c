
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int mask; int gt; } ;


 int intel_gt_reset (int ,int ,char*) ;

__attribute__((used)) static int do_device_reset(struct intel_engine_cs *engine)
{
 intel_gt_reset(engine->gt, engine->mask, "live_workarounds");
 return 0;
}
