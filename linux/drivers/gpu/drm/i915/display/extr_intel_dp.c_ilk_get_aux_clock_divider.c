
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {scalar_t__ aux_ch; } ;
struct TYPE_3__ {int cdclk; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {int rawclk_freq; TYPE_2__ cdclk; } ;


 scalar_t__ AUX_CH_A ;
 int DIV_ROUND_CLOSEST (int ,int) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;

__attribute__((used)) static u32 ilk_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);

 if (index)
  return 0;






 if (dig_port->aux_ch == AUX_CH_A)
  return DIV_ROUND_CLOSEST(dev_priv->cdclk.hw.cdclk, 2000);
 else
  return DIV_ROUND_CLOSEST(dev_priv->rawclk_freq, 2000);
}
