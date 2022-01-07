
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_engine_cs {int id; int name; } ;
struct drm_i915_reg_descriptor {int addr; } ;


 int DRM_ERROR (char*,int ,int ,int,scalar_t__,scalar_t__) ;
 scalar_t__ i915_mmio_reg_offset (int ) ;

__attribute__((used)) static bool check_sorted(const struct intel_engine_cs *engine,
    const struct drm_i915_reg_descriptor *reg_table,
    int reg_count)
{
 int i;
 u32 previous = 0;
 bool ret = 1;

 for (i = 0; i < reg_count; i++) {
  u32 curr = i915_mmio_reg_offset(reg_table[i].addr);

  if (curr < previous) {
   DRM_ERROR("CMD: %s [%d] register table not sorted: "
      "entry=%d reg=0x%08X prev=0x%08X\n",
      engine->name, engine->id,
      i, curr, previous);
   ret = 0;
  }

  previous = curr;
 }

 return ret;
}
