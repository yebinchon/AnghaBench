
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct i915_wa_list {unsigned int count; struct i915_wa* list; } ;
struct intel_engine_cs {int mmio_base; struct intel_uncore* uncore; struct i915_wa_list whitelist; } ;
struct i915_wa {int reg; } ;


 int RING_FORCE_TO_NONPRIV (int const,unsigned int) ;
 unsigned int RING_MAX_NONPRIV_SLOTS ;
 int RING_NOPID (int const) ;
 int i915_mmio_reg_offset (int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;

void intel_engine_apply_whitelist(struct intel_engine_cs *engine)
{
 const struct i915_wa_list *wal = &engine->whitelist;
 struct intel_uncore *uncore = engine->uncore;
 const u32 base = engine->mmio_base;
 struct i915_wa *wa;
 unsigned int i;

 if (!wal->count)
  return;

 for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
  intel_uncore_write(uncore,
       RING_FORCE_TO_NONPRIV(base, i),
       i915_mmio_reg_offset(wa->reg));


 for (; i < RING_MAX_NONPRIV_SLOTS; i++)
  intel_uncore_write(uncore,
       RING_FORCE_TO_NONPRIV(base, i),
       i915_mmio_reg_offset(RING_NOPID(base)));
}
