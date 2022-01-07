
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int count; TYPE_1__* list; } ;
struct intel_engine_cs {TYPE_2__ whitelist; } ;
struct TYPE_3__ {int reg; } ;


 int i915_mmio_reg_offset (int ) ;
 scalar_t__ ro_register (int ) ;

__attribute__((used)) static int whitelist_writable_count(struct intel_engine_cs *engine)
{
 int count = engine->whitelist.count;
 int i;

 for (i = 0; i < engine->whitelist.count; i++) {
  u32 reg = i915_mmio_reg_offset(engine->whitelist.list[i].reg);

  if (ro_register(reg))
   count--;
 }

 return count;
}
