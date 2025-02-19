
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_hdmi {int hdmi_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;


 int DDI_BUF_CTL_ENABLE ;
 scalar_t__ HAS_DDI (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int SDVO_ENABLE ;
 int WARN (int,char*) ;
 struct drm_device* intel_hdmi_to_dev (struct intel_hdmi*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void
assert_hdmi_port_disabled(struct intel_hdmi *intel_hdmi)
{
 struct drm_device *dev = intel_hdmi_to_dev(intel_hdmi);
 struct drm_i915_private *dev_priv = to_i915(dev);
 u32 enabled_bits;

 enabled_bits = HAS_DDI(dev_priv) ? DDI_BUF_CTL_ENABLE : SDVO_ENABLE;

 WARN(I915_READ(intel_hdmi->hdmi_reg) & enabled_bits,
      "HDMI port enabled, expecting disabled\n");
}
