
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct intel_engine_cs {int name; int mask; int gt; int i915; } ;
typedef enum intel_engine_hangcheck_action { ____Placeholder_intel_engine_hangcheck_action } intel_engine_hangcheck_action ;


 int ENGINE_DEAD ;
 int ENGINE_READ (struct intel_engine_cs*,int ) ;
 int ENGINE_WAIT_KICK ;
 int ENGINE_WRITE (struct intel_engine_cs*,int ,int) ;
 scalar_t__ IS_GEN (int ,int) ;
 int RING_CTL ;
 int RING_WAIT ;
 int head_stuck (struct intel_engine_cs*,int ) ;
 int intel_gt_handle_error (int ,int ,int ,char*,int ) ;

__attribute__((used)) static enum intel_engine_hangcheck_action
engine_stuck(struct intel_engine_cs *engine, u64 acthd)
{
 enum intel_engine_hangcheck_action ha;
 u32 tmp;

 ha = head_stuck(engine, acthd);
 if (ha != ENGINE_DEAD)
  return ha;

 if (IS_GEN(engine->i915, 2))
  return ENGINE_DEAD;






 tmp = ENGINE_READ(engine, RING_CTL);
 if (tmp & RING_WAIT) {
  intel_gt_handle_error(engine->gt, engine->mask, 0,
          "stuck wait on %s", engine->name);
  ENGINE_WRITE(engine, RING_CTL, tmp);
  return ENGINE_WAIT_KICK;
 }

 return ENGINE_DEAD;
}
