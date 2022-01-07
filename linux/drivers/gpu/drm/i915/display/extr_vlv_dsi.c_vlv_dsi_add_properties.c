
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {TYPE_3__* fixed_mode; } ;
struct TYPE_8__ {int panel_orientation; } ;
struct TYPE_11__ {TYPE_2__ display_info; TYPE_1__* state; int dev; } ;
struct intel_connector {TYPE_4__ panel; TYPE_5__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_9__ {int vdisplay; int hdisplay; } ;
struct TYPE_7__ {int scaling_mode; } ;


 int BIT (int ) ;
 int DRM_MODE_SCALE_ASPECT ;
 int DRM_MODE_SCALE_CENTER ;
 int DRM_MODE_SCALE_FULLSCREEN ;
 int HAS_GMCH (struct drm_i915_private*) ;
 int drm_connector_attach_scaling_mode_property (TYPE_5__*,int) ;
 int drm_connector_init_panel_orientation_property (TYPE_5__*,int ,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 int vlv_dsi_get_panel_orientation (struct intel_connector*) ;

__attribute__((used)) static void vlv_dsi_add_properties(struct intel_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);

 if (connector->panel.fixed_mode) {
  u32 allowed_scalers;

  allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
  if (!HAS_GMCH(dev_priv))
   allowed_scalers |= BIT(DRM_MODE_SCALE_CENTER);

  drm_connector_attach_scaling_mode_property(&connector->base,
        allowed_scalers);

  connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;

  connector->base.display_info.panel_orientation =
   vlv_dsi_get_panel_orientation(connector);
  drm_connector_init_panel_orientation_property(
    &connector->base,
    connector->panel.fixed_mode->hdisplay,
    connector->panel.fixed_mode->vdisplay);
 }
}
