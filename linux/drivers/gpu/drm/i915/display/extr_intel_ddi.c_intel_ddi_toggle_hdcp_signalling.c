
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {int power_domain; int (* get_hw_state ) (struct intel_encoder*,int*) ;TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int EIO ;
 int ENXIO ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int TRANS_DDI_FUNC_CTL (int) ;
 int TRANS_DDI_HDCP_SIGNALLING ;
 scalar_t__ WARN_ON (int) ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;
 int stub1 (struct intel_encoder*,int*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

int intel_ddi_toggle_hdcp_signalling(struct intel_encoder *intel_encoder,
         bool enable)
{
 struct drm_device *dev = intel_encoder->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 intel_wakeref_t wakeref;
 enum pipe pipe = 0;
 int ret = 0;
 u32 tmp;

 wakeref = intel_display_power_get_if_enabled(dev_priv,
           intel_encoder->power_domain);
 if (WARN_ON(!wakeref))
  return -ENXIO;

 if (WARN_ON(!intel_encoder->get_hw_state(intel_encoder, &pipe))) {
  ret = -EIO;
  goto out;
 }

 tmp = I915_READ(TRANS_DDI_FUNC_CTL(pipe));
 if (enable)
  tmp |= TRANS_DDI_HDCP_SIGNALLING;
 else
  tmp &= ~TRANS_DDI_HDCP_SIGNALLING;
 I915_WRITE(TRANS_DDI_FUNC_CTL(pipe), tmp);
out:
 intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
 return ret;
}
