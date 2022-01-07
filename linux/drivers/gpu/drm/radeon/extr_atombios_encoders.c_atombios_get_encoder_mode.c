
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder_atom_dig {scalar_t__ active_mst_links; } ;
struct radeon_encoder {scalar_t__ encoder_id; scalar_t__ offset; scalar_t__ is_mst_encoder; struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct radeon_connector_atom_dig {int dp_sink_type; } ;
struct radeon_connector {int audio; struct radeon_connector_atom_dig* con_priv; int use_digital; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int connector_type; } ;


 int ASIC_IS_DCE4 (struct radeon_device*) ;
 int ASIC_IS_DCE5 (struct radeon_device*) ;
 int ATOM_ENCODER_MODE_CRT ;
 int ATOM_ENCODER_MODE_DP ;
 int ATOM_ENCODER_MODE_DP_AUDIO ;
 int ATOM_ENCODER_MODE_DP_MST ;
 int ATOM_ENCODER_MODE_DVI ;
 int ATOM_ENCODER_MODE_DVO ;
 int ATOM_ENCODER_MODE_HDMI ;
 int ATOM_ENCODER_MODE_LVDS ;
 int ATOM_ENCODER_MODE_TV ;
 int CONNECTOR_OBJECT_ID_DISPLAYPORT ;
 int CONNECTOR_OBJECT_ID_eDP ;
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_DVO1 ;
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1 ;
 scalar_t__ ENCODER_OBJECT_ID_NONE ;
 int RADEON_AUDIO_AUTO ;
 int RADEON_AUDIO_ENABLE ;
 int drm_detect_hdmi_monitor (int ) ;
 int drm_detect_monitor_audio (int ) ;
 int radeon_audio ;
 int radeon_connector_edid (struct drm_connector*) ;
 scalar_t__ radeon_encoder_get_dp_bridge_encoder_id (struct drm_encoder*) ;
 scalar_t__ radeon_encoder_is_digital (struct drm_encoder*) ;
 struct drm_connector* radeon_get_connector_for_encoder (struct drm_encoder*) ;
 struct drm_connector* radeon_get_connector_for_encoder_init (struct drm_encoder*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

int
atombios_get_encoder_mode(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct drm_connector *connector;
 struct radeon_connector *radeon_connector;
 struct radeon_connector_atom_dig *dig_connector;
 struct radeon_encoder_atom_dig *dig_enc;

 if (radeon_encoder_is_digital(encoder)) {
  dig_enc = radeon_encoder->enc_priv;
  if (dig_enc->active_mst_links)
   return ATOM_ENCODER_MODE_DP_MST;
 }
 if (radeon_encoder->is_mst_encoder || radeon_encoder->offset)
  return ATOM_ENCODER_MODE_DP_MST;

 if (radeon_encoder_get_dp_bridge_encoder_id(encoder) != ENCODER_OBJECT_ID_NONE)
  return ATOM_ENCODER_MODE_DP;


 if ((radeon_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_DVO1) ||
     (radeon_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1))
  return ATOM_ENCODER_MODE_DVO;

 connector = radeon_get_connector_for_encoder(encoder);



 if (!connector)
  connector = radeon_get_connector_for_encoder_init(encoder);
 radeon_connector = to_radeon_connector(connector);

 switch (connector->connector_type) {
 case 135:
 case 132:
  if (radeon_audio != 0) {
   if (radeon_connector->use_digital &&
       (radeon_connector->audio == RADEON_AUDIO_ENABLE))
    return ATOM_ENCODER_MODE_HDMI;
   else if (drm_detect_hdmi_monitor(radeon_connector_edid(connector)) &&
     (radeon_connector->audio == RADEON_AUDIO_AUTO))
    return ATOM_ENCODER_MODE_HDMI;
   else if (radeon_connector->use_digital)
    return ATOM_ENCODER_MODE_DVI;
   else
    return ATOM_ENCODER_MODE_CRT;
  } else if (radeon_connector->use_digital) {
   return ATOM_ENCODER_MODE_DVI;
  } else {
   return ATOM_ENCODER_MODE_CRT;
  }
  break;
 case 136:
 case 133:
 default:
  if (radeon_audio != 0) {
   if (radeon_connector->audio == RADEON_AUDIO_ENABLE)
    return ATOM_ENCODER_MODE_HDMI;
   else if (drm_detect_hdmi_monitor(radeon_connector_edid(connector)) &&
     (radeon_connector->audio == RADEON_AUDIO_AUTO))
    return ATOM_ENCODER_MODE_HDMI;
   else
    return ATOM_ENCODER_MODE_DVI;
  } else {
   return ATOM_ENCODER_MODE_DVI;
  }
  break;
 case 131:
  return ATOM_ENCODER_MODE_LVDS;
  break;
 case 134:
  dig_connector = radeon_connector->con_priv;
  if ((dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) ||
      (dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_eDP)) {
   if (radeon_audio != 0 &&
       drm_detect_monitor_audio(radeon_connector_edid(connector)) &&
       ASIC_IS_DCE4(rdev) && !ASIC_IS_DCE5(rdev))
    return ATOM_ENCODER_MODE_DP_AUDIO;
   return ATOM_ENCODER_MODE_DP;
  } else if (radeon_audio != 0) {
   if (radeon_connector->audio == RADEON_AUDIO_ENABLE)
    return ATOM_ENCODER_MODE_HDMI;
   else if (drm_detect_hdmi_monitor(radeon_connector_edid(connector)) &&
     (radeon_connector->audio == RADEON_AUDIO_AUTO))
    return ATOM_ENCODER_MODE_HDMI;
   else
    return ATOM_ENCODER_MODE_DVI;
  } else {
   return ATOM_ENCODER_MODE_DVI;
  }
  break;
 case 128:
  if (radeon_audio != 0 &&
      drm_detect_monitor_audio(radeon_connector_edid(connector)) &&
      ASIC_IS_DCE4(rdev) && !ASIC_IS_DCE5(rdev))
   return ATOM_ENCODER_MODE_DP_AUDIO;
  return ATOM_ENCODER_MODE_DP;
 case 137:
 case 129:
  return ATOM_ENCODER_MODE_CRT;
  break;
 case 138:
 case 130:
 case 139:

  return ATOM_ENCODER_MODE_TV;

  break;
 }
}
