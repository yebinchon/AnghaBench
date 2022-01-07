
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i915_wa_list {scalar_t__ count; } ;
struct TYPE_3__ {int reg; } ;
struct i915_wa {TYPE_1__ reg; } ;
typedef TYPE_1__ i915_reg_t ;


 scalar_t__ GEM_DEBUG_WARN_ON (int) ;
 scalar_t__ RING_MAX_NONPRIV_SLOTS ;
 int _wa_add (struct i915_wa_list*,struct i915_wa*) ;
 int is_nonpriv_flags_valid (int ) ;

__attribute__((used)) static void
whitelist_reg_ext(struct i915_wa_list *wal, i915_reg_t reg, u32 flags)
{
 struct i915_wa wa = {
  .reg = reg
 };

 if (GEM_DEBUG_WARN_ON(wal->count >= RING_MAX_NONPRIV_SLOTS))
  return;

 if (GEM_DEBUG_WARN_ON(!is_nonpriv_flags_valid(flags)))
  return;

 wa.reg.reg |= flags;
 _wa_add(wal, &wa);
}
