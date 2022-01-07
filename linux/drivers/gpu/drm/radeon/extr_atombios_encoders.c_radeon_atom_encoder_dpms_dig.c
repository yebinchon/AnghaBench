
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_encoder_atom_dig {int active_mst_links; int backlight_level; int panel_mode; } ;
struct radeon_encoder {int devices; struct radeon_encoder_atom_dig* enc_priv; } ;
struct TYPE_2__ {int bl_encoder; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct radeon_connector_atom_dig {int edp_on; } ;
struct radeon_connector {struct radeon_connector_atom_dig* con_priv; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int connector_type; } ;


 int ASIC_IS_DCE4 (struct radeon_device*) ;
 int ASIC_IS_DCE41 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE5 (struct radeon_device*) ;
 int ASIC_IS_DCE61 (struct radeon_device*) ;
 int ATOM_DEVICE_LCD_SUPPORT ;
 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int ATOM_ENCODER_CMD_DP_VIDEO_OFF ;
 int ATOM_ENCODER_CMD_DP_VIDEO_ON ;
 int ATOM_ENCODER_CMD_SETUP ;
 int ATOM_ENCODER_CMD_SETUP_PANEL_MODE ;
 int ATOM_TRANSMITTER_ACTION_DISABLE ;
 int ATOM_TRANSMITTER_ACTION_ENABLE ;
 int ATOM_TRANSMITTER_ACTION_LCD_BLOFF ;
 int ATOM_TRANSMITTER_ACTION_LCD_BLON ;
 int ATOM_TRANSMITTER_ACTION_POWER_OFF ;
 int ATOM_TRANSMITTER_ACTION_POWER_ON ;
 int ATOM_TRANSMITTER_ACTION_SETUP ;
 int DP_PANEL_MODE_EXTERNAL_DP_MODE ;
 int DP_SET_POWER_D3 ;
 int DRM_MODE_CONNECTOR_eDP ;




 int ENCODER_MODE_IS_DP (int ) ;
 scalar_t__ ENCODER_OBJECT_ID_TRAVIS ;
 int EXTERNAL_ENCODER_ACTION_V3_ENCODER_SETUP ;
 int atombios_dig_encoder_setup (struct drm_encoder*,int ,int ) ;
 int atombios_dig_transmitter_setup (struct drm_encoder*,int ,int ,int ) ;
 int atombios_external_encoder_setup (struct drm_encoder*,struct drm_encoder*,int ) ;
 int atombios_get_encoder_mode (struct drm_encoder*) ;
 int atombios_set_backlight_level (struct radeon_encoder*,int ) ;
 int atombios_set_edp_panel_power (struct drm_connector*,int ) ;
 scalar_t__ radeon_connector_encoder_get_dp_bridge_encoder_id (struct drm_connector*) ;
 int radeon_dp_get_panel_mode (struct drm_encoder*,struct drm_connector*) ;
 int radeon_dp_link_train (struct drm_encoder*,struct drm_connector*) ;
 int radeon_dp_set_rx_power_state (struct drm_connector*,int ) ;
 struct drm_connector* radeon_get_connector_for_encoder (struct drm_encoder*) ;
 struct drm_encoder* radeon_get_external_encoder (struct drm_encoder*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void
radeon_atom_encoder_dpms_dig(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct drm_encoder *ext_encoder = radeon_get_external_encoder(encoder);
 struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
 struct drm_connector *connector = radeon_get_connector_for_encoder(encoder);
 struct radeon_connector *radeon_connector = ((void*)0);
 struct radeon_connector_atom_dig *radeon_dig_connector = ((void*)0);
 bool travis_quirk = 0;

 if (connector) {
  radeon_connector = to_radeon_connector(connector);
  radeon_dig_connector = radeon_connector->con_priv;
  if ((radeon_connector_encoder_get_dp_bridge_encoder_id(connector) ==
       ENCODER_OBJECT_ID_TRAVIS) &&
      (radeon_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT)) &&
      !ASIC_IS_DCE5(rdev))
   travis_quirk = 1;
 }

 switch (mode) {
 case 130:
  if (ASIC_IS_DCE41(rdev) || ASIC_IS_DCE5(rdev)) {
   if (!connector)
    dig->panel_mode = DP_PANEL_MODE_EXTERNAL_DP_MODE;
   else
    dig->panel_mode = radeon_dp_get_panel_mode(encoder, connector);


   atombios_dig_encoder_setup(encoder, ATOM_ENCODER_CMD_SETUP, 0);
   atombios_dig_encoder_setup(encoder,
         ATOM_ENCODER_CMD_SETUP_PANEL_MODE,
         dig->panel_mode);
   if (ext_encoder) {
    if (ASIC_IS_DCE41(rdev) || ASIC_IS_DCE61(rdev))
     atombios_external_encoder_setup(encoder, ext_encoder,
         EXTERNAL_ENCODER_ACTION_V3_ENCODER_SETUP);
   }
  } else if (ASIC_IS_DCE4(rdev)) {

   atombios_dig_encoder_setup(encoder, ATOM_ENCODER_CMD_SETUP, 0);
  } else {

   atombios_dig_encoder_setup(encoder, ATOM_ENABLE, 0);
   atombios_dig_transmitter_setup(encoder, ATOM_TRANSMITTER_ACTION_SETUP, 0, 0);
  }
  if (ENCODER_MODE_IS_DP(atombios_get_encoder_mode(encoder)) && connector) {
   if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
    atombios_set_edp_panel_power(connector,
            ATOM_TRANSMITTER_ACTION_POWER_ON);
    radeon_dig_connector->edp_on = 1;
   }
  }

  atombios_dig_transmitter_setup(encoder, ATOM_TRANSMITTER_ACTION_ENABLE, 0, 0);
  if (ENCODER_MODE_IS_DP(atombios_get_encoder_mode(encoder)) && connector) {

   radeon_dp_link_train(encoder, connector);
   if (ASIC_IS_DCE4(rdev))
    atombios_dig_encoder_setup(encoder, ATOM_ENCODER_CMD_DP_VIDEO_ON, 0);
  }
  if (radeon_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT)) {
   if (rdev->mode_info.bl_encoder)
    atombios_set_backlight_level(radeon_encoder, dig->backlight_level);
   else
    atombios_dig_transmitter_setup(encoder,
              ATOM_TRANSMITTER_ACTION_LCD_BLON, 0, 0);
  }
  if (ext_encoder)
   atombios_external_encoder_setup(encoder, ext_encoder, ATOM_ENABLE);
  break;
 case 129:
 case 128:
 case 131:


  if (dig->active_mst_links)
   return;

  if (ASIC_IS_DCE4(rdev)) {
   if (ENCODER_MODE_IS_DP(atombios_get_encoder_mode(encoder)) && connector)
    atombios_dig_encoder_setup(encoder, ATOM_ENCODER_CMD_DP_VIDEO_OFF, 0);
  }
  if (ext_encoder)
   atombios_external_encoder_setup(encoder, ext_encoder, ATOM_DISABLE);
  if (radeon_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT))
   atombios_dig_transmitter_setup(encoder,
             ATOM_TRANSMITTER_ACTION_LCD_BLOFF, 0, 0);

  if (ENCODER_MODE_IS_DP(atombios_get_encoder_mode(encoder)) &&
      connector && !travis_quirk)
   radeon_dp_set_rx_power_state(connector, DP_SET_POWER_D3);
  if (ASIC_IS_DCE4(rdev)) {

   atombios_dig_transmitter_setup(encoder,
             ATOM_TRANSMITTER_ACTION_DISABLE, 0, 0);
  } else {

   atombios_dig_transmitter_setup(encoder,
             ATOM_TRANSMITTER_ACTION_DISABLE, 0, 0);
   atombios_dig_encoder_setup(encoder, ATOM_DISABLE, 0);
  }
  if (ENCODER_MODE_IS_DP(atombios_get_encoder_mode(encoder)) && connector) {
   if (travis_quirk)
    radeon_dp_set_rx_power_state(connector, DP_SET_POWER_D3);
   if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
    atombios_set_edp_panel_power(connector,
            ATOM_TRANSMITTER_ACTION_POWER_OFF);
    radeon_dig_connector->edp_on = 0;
   }
  }
  break;
 }
}
