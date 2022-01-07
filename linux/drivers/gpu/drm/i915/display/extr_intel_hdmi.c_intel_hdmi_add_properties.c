
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct intel_hdmi {int dummy; } ;
struct TYPE_7__ {int active; } ;
struct intel_digital_port {TYPE_3__ lspcon; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {TYPE_4__* dev; int base; TYPE_1__* state; } ;
struct TYPE_6__ {int hdr_output_metadata_property; } ;
struct TYPE_8__ {TYPE_2__ mode_config; } ;
struct TYPE_5__ {int picture_aspect_ratio; } ;


 int HAS_GMCH (struct drm_i915_private*) ;
 int HDMI_PICTURE_ASPECT_NONE ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int drm_connector_attach_content_type_property (struct drm_connector*) ;
 int drm_connector_attach_max_bpc_property (struct drm_connector*,int,int) ;
 int drm_object_attach_property (int *,int ,int ) ;
 struct intel_digital_port* hdmi_to_dig_port (struct intel_hdmi*) ;
 int intel_attach_aspect_ratio_property (struct drm_connector*) ;
 int intel_attach_broadcast_rgb_property (struct drm_connector*) ;
 int intel_attach_colorspace_property (struct drm_connector*) ;
 int intel_attach_force_audio_property (struct drm_connector*) ;
 struct drm_i915_private* to_i915 (TYPE_4__*) ;

__attribute__((used)) static void
intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->dev);
 struct intel_digital_port *intel_dig_port =
    hdmi_to_dig_port(intel_hdmi);

 intel_attach_force_audio_property(connector);
 intel_attach_broadcast_rgb_property(connector);
 intel_attach_aspect_ratio_property(connector);






 if (!intel_dig_port->lspcon.active)
  intel_attach_colorspace_property(connector);

 drm_connector_attach_content_type_property(connector);
 connector->state->picture_aspect_ratio = HDMI_PICTURE_ASPECT_NONE;

 if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
  drm_object_attach_property(&connector->base,
   connector->dev->mode_config.hdr_output_metadata_property, 0);

 if (!HAS_GMCH(dev_priv))
  drm_connector_attach_max_bpc_property(connector, 8, 12);
}
