
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int connector_type; } ;
struct amdgpu_connector_atom_dig {int dp_sink_type; } ;
struct amdgpu_connector {struct amdgpu_connector_atom_dig* con_priv; int use_digital; } ;


 int CONNECTOR_OBJECT_ID_DISPLAYPORT ;
 int CONNECTOR_OBJECT_ID_eDP ;





 int amdgpu_connector_edid (struct drm_connector*) ;
 struct drm_connector* amdgpu_get_connector_for_encoder (struct drm_encoder*) ;
 struct drm_connector* amdgpu_get_connector_for_encoder_init (struct drm_encoder*) ;
 int drm_detect_hdmi_monitor (int ) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;

bool amdgpu_dig_monitor_is_duallink(struct drm_encoder *encoder,
        u32 pixel_clock)
{
 struct drm_connector *connector;
 struct amdgpu_connector *amdgpu_connector;
 struct amdgpu_connector_atom_dig *dig_connector;

 connector = amdgpu_get_connector_for_encoder(encoder);



 if (!connector)
  connector = amdgpu_get_connector_for_encoder_init(encoder);
 amdgpu_connector = to_amdgpu_connector(connector);

 switch (connector->connector_type) {
 case 131:
 case 128:
  if (amdgpu_connector->use_digital) {

   if (drm_detect_hdmi_monitor(amdgpu_connector_edid(connector))) {
    if (pixel_clock > 340000)
     return 1;
    else
     return 0;
   } else {
    if (pixel_clock > 165000)
     return 1;
    else
     return 0;
   }
  } else
   return 0;
 case 132:
 case 129:
 case 130:
  dig_connector = amdgpu_connector->con_priv;
  if ((dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) ||
      (dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_eDP))
   return 0;
  else {

   if (drm_detect_hdmi_monitor(amdgpu_connector_edid(connector))) {
    if (pixel_clock > 340000)
     return 1;
    else
     return 0;
   } else {
    if (pixel_clock > 165000)
     return 1;
    else
     return 0;
   }
  }
 default:
  return 0;
 }
}
