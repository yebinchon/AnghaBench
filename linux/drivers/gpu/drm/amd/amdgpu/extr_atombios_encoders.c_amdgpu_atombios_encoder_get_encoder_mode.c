
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_connector {int connector_type; } ;
struct amdgpu_encoder {scalar_t__ encoder_id; } ;
struct amdgpu_connector_atom_dig {int dp_sink_type; } ;
struct amdgpu_connector {int audio; struct amdgpu_connector_atom_dig* con_priv; int use_digital; } ;


 int AMDGPU_AUDIO_AUTO ;
 int AMDGPU_AUDIO_ENABLE ;
 int ATOM_ENCODER_MODE_CRT ;
 int ATOM_ENCODER_MODE_DP ;
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
 int amdgpu_audio ;
 int amdgpu_connector_edid (struct drm_connector*) ;
 scalar_t__ amdgpu_encoder_get_dp_bridge_encoder_id (struct drm_encoder*) ;
 struct drm_connector* amdgpu_get_connector_for_encoder (struct drm_encoder*) ;
 struct drm_connector* amdgpu_get_connector_for_encoder_init (struct drm_encoder*) ;
 int drm_detect_hdmi_monitor (int ) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

int amdgpu_atombios_encoder_get_encoder_mode(struct drm_encoder *encoder)
{
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 struct drm_connector *connector;
 struct amdgpu_connector *amdgpu_connector;
 struct amdgpu_connector_atom_dig *dig_connector;


 if (amdgpu_encoder_get_dp_bridge_encoder_id(encoder) != ENCODER_OBJECT_ID_NONE)
  return ATOM_ENCODER_MODE_DP;


 if ((amdgpu_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_DVO1) ||
     (amdgpu_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1))
  return ATOM_ENCODER_MODE_DVO;

 connector = amdgpu_get_connector_for_encoder(encoder);



 if (!connector)
  connector = amdgpu_get_connector_for_encoder_init(encoder);
 amdgpu_connector = to_amdgpu_connector(connector);

 switch (connector->connector_type) {
 case 135:
 case 132:
  if (amdgpu_audio != 0) {
   if (amdgpu_connector->use_digital &&
       (amdgpu_connector->audio == AMDGPU_AUDIO_ENABLE))
    return ATOM_ENCODER_MODE_HDMI;
   else if (drm_detect_hdmi_monitor(amdgpu_connector_edid(connector)) &&
     (amdgpu_connector->audio == AMDGPU_AUDIO_AUTO))
    return ATOM_ENCODER_MODE_HDMI;
   else if (amdgpu_connector->use_digital)
    return ATOM_ENCODER_MODE_DVI;
   else
    return ATOM_ENCODER_MODE_CRT;
  } else if (amdgpu_connector->use_digital) {
   return ATOM_ENCODER_MODE_DVI;
  } else {
   return ATOM_ENCODER_MODE_CRT;
  }
  break;
 case 136:
 case 133:
 default:
  if (amdgpu_audio != 0) {
   if (amdgpu_connector->audio == AMDGPU_AUDIO_ENABLE)
    return ATOM_ENCODER_MODE_HDMI;
   else if (drm_detect_hdmi_monitor(amdgpu_connector_edid(connector)) &&
     (amdgpu_connector->audio == AMDGPU_AUDIO_AUTO))
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
  dig_connector = amdgpu_connector->con_priv;
  if ((dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) ||
      (dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_eDP)) {
   return ATOM_ENCODER_MODE_DP;
  } else if (amdgpu_audio != 0) {
   if (amdgpu_connector->audio == AMDGPU_AUDIO_ENABLE)
    return ATOM_ENCODER_MODE_HDMI;
   else if (drm_detect_hdmi_monitor(amdgpu_connector_edid(connector)) &&
     (amdgpu_connector->audio == AMDGPU_AUDIO_AUTO))
    return ATOM_ENCODER_MODE_HDMI;
   else
    return ATOM_ENCODER_MODE_DVI;
  } else {
   return ATOM_ENCODER_MODE_DVI;
  }
  break;
 case 128:
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
