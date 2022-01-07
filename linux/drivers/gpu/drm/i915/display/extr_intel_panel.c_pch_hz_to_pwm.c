
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_connector {TYPE_1__ base; } ;
struct drm_i915_private {int rawclk_freq; } ;


 int DIV_ROUND_CLOSEST (int ,int) ;
 int KHz (int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 pch_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);

 return DIV_ROUND_CLOSEST(KHz(dev_priv->rawclk_freq), pwm_freq_hz * 128);
}
