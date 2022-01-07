
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {unsigned int count; TYPE_1__* list; } ;
struct intel_engine_cs {int mmio_base; TYPE_2__ whitelist; } ;
typedef int i915_reg_t ;
struct TYPE_3__ {int reg; } ;


 int RING_NOPID (int ) ;
 int i915_mmio_reg_offset (int ) ;

__attribute__((used)) static u32
get_whitelist_reg(const struct intel_engine_cs *engine, unsigned int i)
{
 i915_reg_t reg = i < engine->whitelist.count ?
    engine->whitelist.list[i].reg :
    RING_NOPID(engine->mmio_base);

 return i915_mmio_reg_offset(reg);
}
