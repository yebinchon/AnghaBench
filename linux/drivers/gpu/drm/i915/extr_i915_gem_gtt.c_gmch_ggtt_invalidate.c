
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_ggtt {int dummy; } ;


 int intel_gtt_chipset_flush () ;

__attribute__((used)) static void gmch_ggtt_invalidate(struct i915_ggtt *ggtt)
{
 intel_gtt_chipset_flush();
}
