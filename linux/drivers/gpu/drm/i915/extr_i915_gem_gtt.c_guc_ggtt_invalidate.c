
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_uncore {int dummy; } ;
struct TYPE_4__ {TYPE_1__* gt; } ;
struct i915_ggtt {TYPE_2__ vm; } ;
struct TYPE_3__ {struct intel_uncore* uncore; } ;


 int GEN8_GTCR ;
 int GEN8_GTCR_INVALIDATE ;
 int gen6_ggtt_invalidate (struct i915_ggtt*) ;
 int intel_uncore_write_fw (struct intel_uncore*,int ,int ) ;

__attribute__((used)) static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
{
 struct intel_uncore *uncore = ggtt->vm.gt->uncore;

 gen6_ggtt_invalidate(ggtt);
 intel_uncore_write_fw(uncore, GEN8_GTCR, GEN8_GTCR_INVALIDATE);
}
