
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct intel_connector {TYPE_1__ base; } ;
struct TYPE_5__ {int orientation; } ;
struct TYPE_6__ {int orientation; TYPE_2__ dsi; } ;
struct drm_i915_private {TYPE_3__ vbt; } ;
typedef enum drm_panel_orientation { ____Placeholder_drm_panel_orientation } drm_panel_orientation ;


 int DRM_MODE_PANEL_ORIENTATION_NORMAL ;
 int DRM_MODE_PANEL_ORIENTATION_UNKNOWN ;
 struct drm_i915_private* to_i915 (int ) ;

enum drm_panel_orientation
intel_dsi_get_panel_orientation(struct intel_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 enum drm_panel_orientation orientation;

 orientation = dev_priv->vbt.dsi.orientation;
 if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
  return orientation;

 orientation = dev_priv->vbt.orientation;
 if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
  return orientation;

 return DRM_MODE_PANEL_ORIENTATION_NORMAL;
}
