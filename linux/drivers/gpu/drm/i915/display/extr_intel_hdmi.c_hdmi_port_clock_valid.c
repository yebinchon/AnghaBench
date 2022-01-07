
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_hdmi {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 int MODE_CLOCK_HIGH ;
 int MODE_CLOCK_LOW ;
 int MODE_CLOCK_RANGE ;
 int MODE_OK ;
 int hdmi_port_clock_limit (struct intel_hdmi*,int,int) ;
 int intel_hdmi_to_dev (struct intel_hdmi*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static enum drm_mode_status
hdmi_port_clock_valid(struct intel_hdmi *hdmi,
        int clock, bool respect_downstream_limits,
        bool force_dvi)
{
 struct drm_i915_private *dev_priv = to_i915(intel_hdmi_to_dev(hdmi));

 if (clock < 25000)
  return MODE_CLOCK_LOW;
 if (clock > hdmi_port_clock_limit(hdmi, respect_downstream_limits, force_dvi))
  return MODE_CLOCK_HIGH;


 if (IS_GEN9_LP(dev_priv) && clock > 223333 && clock < 240000)
  return MODE_CLOCK_RANGE;


 if (IS_CHERRYVIEW(dev_priv) && clock > 216000 && clock < 240000)
  return MODE_CLOCK_RANGE;

 return MODE_OK;
}
