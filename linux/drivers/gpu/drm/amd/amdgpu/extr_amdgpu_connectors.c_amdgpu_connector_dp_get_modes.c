
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct drm_display_mode {int height_mm; int width_mm; } ;
struct TYPE_2__ {int height_mm; int width_mm; } ;
struct drm_connector {scalar_t__ connector_type; TYPE_1__ display_info; } ;
struct amdgpu_connector_atom_dig {int edp_on; } ;
struct amdgpu_connector {struct amdgpu_connector_atom_dig* con_priv; } ;


 int ATOM_TRANSMITTER_ACTION_POWER_OFF ;
 int ATOM_TRANSMITTER_ACTION_POWER_ON ;
 scalar_t__ DRM_MODE_CONNECTOR_LVDS ;
 scalar_t__ DRM_MODE_CONNECTOR_eDP ;
 scalar_t__ ENCODER_OBJECT_ID_NONE ;
 int amdgpu_atombios_encoder_set_edp_panel_power (struct drm_connector*,int ) ;
 int amdgpu_atombios_encoder_setup_ext_encoder_ddc (struct drm_encoder*) ;
 int amdgpu_connector_add_common_modes (struct drm_encoder*,struct drm_connector*) ;
 struct drm_encoder* amdgpu_connector_best_single_encoder (struct drm_connector*) ;
 int amdgpu_connector_ddc_get_modes (struct drm_connector*) ;
 scalar_t__ amdgpu_connector_encoder_get_dp_bridge_encoder_id (struct drm_connector*) ;
 int amdgpu_connector_fixup_lcd_native_mode (struct drm_encoder*,struct drm_connector*) ;
 int amdgpu_connector_get_edid (struct drm_connector*) ;
 struct drm_display_mode* amdgpu_connector_lcd_native_mode (struct drm_encoder*) ;
 int amdgpu_get_native_mode (struct drm_connector*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;

__attribute__((used)) static int amdgpu_connector_dp_get_modes(struct drm_connector *connector)
{
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);
 struct amdgpu_connector_atom_dig *amdgpu_dig_connector = amdgpu_connector->con_priv;
 struct drm_encoder *encoder = amdgpu_connector_best_single_encoder(connector);
 int ret;

 if ((connector->connector_type == DRM_MODE_CONNECTOR_eDP) ||
     (connector->connector_type == DRM_MODE_CONNECTOR_LVDS)) {
  struct drm_display_mode *mode;

  if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
   if (!amdgpu_dig_connector->edp_on)
    amdgpu_atombios_encoder_set_edp_panel_power(connector,
             ATOM_TRANSMITTER_ACTION_POWER_ON);
   amdgpu_connector_get_edid(connector);
   ret = amdgpu_connector_ddc_get_modes(connector);
   if (!amdgpu_dig_connector->edp_on)
    amdgpu_atombios_encoder_set_edp_panel_power(connector,
             ATOM_TRANSMITTER_ACTION_POWER_OFF);
  } else {

   if (amdgpu_connector_encoder_get_dp_bridge_encoder_id(connector) !=
       ENCODER_OBJECT_ID_NONE) {
    if (encoder)
     amdgpu_atombios_encoder_setup_ext_encoder_ddc(encoder);
   }
   amdgpu_connector_get_edid(connector);
   ret = amdgpu_connector_ddc_get_modes(connector);
  }

  if (ret > 0) {
   if (encoder) {
    amdgpu_connector_fixup_lcd_native_mode(encoder, connector);

    amdgpu_connector_add_common_modes(encoder, connector);
   }
   return ret;
  }

  if (!encoder)
   return 0;


  mode = amdgpu_connector_lcd_native_mode(encoder);
  if (mode) {
   ret = 1;
   drm_mode_probed_add(connector, mode);

   connector->display_info.width_mm = mode->width_mm;
   connector->display_info.height_mm = mode->height_mm;

   amdgpu_connector_add_common_modes(encoder, connector);
  }
 } else {

  if (amdgpu_connector_encoder_get_dp_bridge_encoder_id(connector) !=
   ENCODER_OBJECT_ID_NONE) {
   if (encoder)
    amdgpu_atombios_encoder_setup_ext_encoder_ddc(encoder);
  }
  amdgpu_connector_get_edid(connector);
  ret = amdgpu_connector_ddc_get_modes(connector);

  amdgpu_get_native_mode(connector);
 }

 return ret;
}
