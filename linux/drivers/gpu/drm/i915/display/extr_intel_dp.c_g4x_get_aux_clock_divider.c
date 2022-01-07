
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_dp {int dummy; } ;
struct drm_i915_private {int rawclk_freq; } ;


 int DIV_ROUND_CLOSEST (int ,int) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;

__attribute__((used)) static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);

 if (index)
  return 0;





 return DIV_ROUND_CLOSEST(dev_priv->rawclk_freq, 2000);
}
