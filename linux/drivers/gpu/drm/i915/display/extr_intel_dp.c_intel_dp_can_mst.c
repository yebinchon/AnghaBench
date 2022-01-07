
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dp {scalar_t__ can_mst; } ;
struct TYPE_2__ {scalar_t__ enable_dp_mst; } ;


 TYPE_1__ i915_modparams ;
 scalar_t__ intel_dp_sink_can_mst (struct intel_dp*) ;

__attribute__((used)) static bool
intel_dp_can_mst(struct intel_dp *intel_dp)
{
 return i915_modparams.enable_dp_mst &&
  intel_dp->can_mst &&
  intel_dp_sink_can_mst(intel_dp);
}
