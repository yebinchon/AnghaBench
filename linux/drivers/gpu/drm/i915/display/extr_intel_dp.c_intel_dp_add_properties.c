
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {TYPE_1__* state; int dev; } ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_5__ {int port; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct TYPE_4__ {int scaling_mode; } ;


 int BIT (int ) ;
 int DRM_MODE_SCALE_ASPECT ;
 int DRM_MODE_SCALE_CENTER ;
 int DRM_MODE_SCALE_FULLSCREEN ;
 scalar_t__ HAS_GMCH (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int IS_G4X (struct drm_i915_private*) ;
 int PORT_A ;
 TYPE_3__* dp_to_dig_port (struct intel_dp*) ;
 int drm_connector_attach_max_bpc_property (struct drm_connector*,int,int) ;
 int drm_connector_attach_scaling_mode_property (struct drm_connector*,int) ;
 int intel_attach_broadcast_rgb_property (struct drm_connector*) ;
 int intel_attach_force_audio_property (struct drm_connector*) ;
 scalar_t__ intel_dp_is_edp (struct intel_dp*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void
intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->dev);
 enum port port = dp_to_dig_port(intel_dp)->base.port;

 if (!IS_G4X(dev_priv) && port != PORT_A)
  intel_attach_force_audio_property(connector);

 intel_attach_broadcast_rgb_property(connector);
 if (HAS_GMCH(dev_priv))
  drm_connector_attach_max_bpc_property(connector, 6, 10);
 else if (INTEL_GEN(dev_priv) >= 5)
  drm_connector_attach_max_bpc_property(connector, 6, 12);

 if (intel_dp_is_edp(intel_dp)) {
  u32 allowed_scalers;

  allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
  if (!HAS_GMCH(dev_priv))
   allowed_scalers |= BIT(DRM_MODE_SCALE_CENTER);

  drm_connector_attach_scaling_mode_property(connector, allowed_scalers);

  connector->state->scaling_mode = DRM_MODE_SCALE_ASPECT;

 }
}
