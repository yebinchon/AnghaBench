
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_hdmi {int hdmi_reg; } ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int power_domain; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 struct intel_hdmi* enc_to_intel_hdmi (TYPE_1__*) ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;
 int intel_sdvo_port_enabled (struct drm_i915_private*,int ,int*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool intel_hdmi_get_hw_state(struct intel_encoder *encoder,
        enum pipe *pipe)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(&encoder->base);
 intel_wakeref_t wakeref;
 bool ret;

 wakeref = intel_display_power_get_if_enabled(dev_priv,
           encoder->power_domain);
 if (!wakeref)
  return 0;

 ret = intel_sdvo_port_enabled(dev_priv, intel_hdmi->hdmi_reg, pipe);

 intel_display_power_put(dev_priv, encoder->power_domain, wakeref);

 return ret;
}
