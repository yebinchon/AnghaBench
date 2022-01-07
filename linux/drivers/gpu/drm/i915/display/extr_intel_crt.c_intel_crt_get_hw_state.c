
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {int power_domain; TYPE_1__ base; } ;
struct intel_crt {int adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int intel_crt_port_enabled (struct drm_i915_private*,int ,int*) ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;
 struct intel_crt* intel_encoder_to_crt (struct intel_encoder*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool intel_crt_get_hw_state(struct intel_encoder *encoder,
       enum pipe *pipe)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_crt *crt = intel_encoder_to_crt(encoder);
 intel_wakeref_t wakeref;
 bool ret;

 wakeref = intel_display_power_get_if_enabled(dev_priv,
           encoder->power_domain);
 if (!wakeref)
  return 0;

 ret = intel_crt_port_enabled(dev_priv, crt->adpa_reg, pipe);

 intel_display_power_put(dev_priv, encoder->power_domain, wakeref);

 return ret;
}
