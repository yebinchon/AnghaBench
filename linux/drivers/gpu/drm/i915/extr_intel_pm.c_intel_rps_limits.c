
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct intel_rps {int max_freq_softlimit; int min_freq_softlimit; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;


 int INTEL_GEN (struct drm_i915_private*) ;

__attribute__((used)) static u32 intel_rps_limits(struct drm_i915_private *dev_priv, u8 val)
{
 struct intel_rps *rps = &dev_priv->gt_pm.rps;
 u32 limits;







 if (INTEL_GEN(dev_priv) >= 9) {
  limits = (rps->max_freq_softlimit) << 23;
  if (val <= rps->min_freq_softlimit)
   limits |= (rps->min_freq_softlimit) << 14;
 } else {
  limits = rps->max_freq_softlimit << 24;
  if (val <= rps->min_freq_softlimit)
   limits |= rps->min_freq_softlimit << 16;
 }

 return limits;
}
