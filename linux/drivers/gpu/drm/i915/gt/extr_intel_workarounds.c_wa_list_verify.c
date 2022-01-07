
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct i915_wa_list {unsigned int count; int name; struct i915_wa* list; } ;
struct i915_wa {int reg; } ;


 int intel_uncore_read (struct intel_uncore*,int ) ;
 int wa_verify (struct i915_wa*,int ,int ,char const*) ;

__attribute__((used)) static bool wa_list_verify(struct intel_uncore *uncore,
      const struct i915_wa_list *wal,
      const char *from)
{
 struct i915_wa *wa;
 unsigned int i;
 bool ok = 1;

 for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
  ok &= wa_verify(wa,
    intel_uncore_read(uncore, wa->reg),
    wal->name, from);

 return ok;
}
