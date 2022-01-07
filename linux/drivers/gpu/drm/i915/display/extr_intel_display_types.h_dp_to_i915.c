
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct TYPE_6__ {TYPE_2__ base; } ;


 TYPE_3__* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static inline struct drm_i915_private *
dp_to_i915(struct intel_dp *intel_dp)
{
 return to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
}
