
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_plane {int i9xx_plane; } ;
struct intel_encoder {int (* get_hw_state ) (struct intel_encoder*,int*) ;} ;
struct TYPE_3__ {int primary; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_connector {struct intel_encoder* encoder; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;
typedef enum drm_panel_orientation { ____Placeholder_drm_panel_orientation } drm_panel_orientation ;


 int DISPLAY_PLANE_ENABLE ;
 int DISPPLANE_ROTATE_180 ;
 int DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP ;
 int DRM_MODE_PANEL_ORIENTATION_NORMAL ;
 int DRM_MODE_PANEL_ORIENTATION_UNKNOWN ;
 int DSPCNTR (int ) ;
 int I915_READ (int ) ;
 int POWER_DOMAIN_PIPE (int) ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int) ;
 int intel_display_power_put (struct drm_i915_private*,int,int ) ;
 struct intel_crtc* intel_get_crtc_for_pipe (struct drm_i915_private*,int) ;
 int stub1 (struct intel_encoder*,int*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static enum drm_panel_orientation
vlv_dsi_get_hw_panel_orientation(struct intel_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_encoder *encoder = connector->encoder;
 enum intel_display_power_domain power_domain;
 enum drm_panel_orientation orientation;
 struct intel_plane *plane;
 struct intel_crtc *crtc;
 intel_wakeref_t wakeref;
 enum pipe pipe;
 u32 val;

 if (!encoder->get_hw_state(encoder, &pipe))
  return DRM_MODE_PANEL_ORIENTATION_UNKNOWN;

 crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
 plane = to_intel_plane(crtc->base.primary);

 power_domain = POWER_DOMAIN_PIPE(pipe);
 wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
 if (!wakeref)
  return DRM_MODE_PANEL_ORIENTATION_UNKNOWN;

 val = I915_READ(DSPCNTR(plane->i9xx_plane));

 if (!(val & DISPLAY_PLANE_ENABLE))
  orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
 else if (val & DISPPLANE_ROTATE_180)
  orientation = DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
 else
  orientation = DRM_MODE_PANEL_ORIENTATION_NORMAL;

 intel_display_power_put(dev_priv, power_domain, wakeref);

 return orientation;
}
