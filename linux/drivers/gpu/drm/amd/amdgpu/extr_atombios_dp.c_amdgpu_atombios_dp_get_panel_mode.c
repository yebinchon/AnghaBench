
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct drm_encoder {int dummy; } ;
struct drm_connector {scalar_t__ connector_type; } ;
struct amdgpu_connector_atom_dig {int dummy; } ;
struct amdgpu_connector {TYPE_1__* ddc_bus; struct amdgpu_connector_atom_dig* con_priv; } ;
struct TYPE_2__ {int aux; } ;


 int DP_EDP_CONFIGURATION_CAP ;
 int DP_PANEL_MODE_EXTERNAL_DP_MODE ;
 int DP_PANEL_MODE_INTERNAL_DP1_MODE ;
 int DP_PANEL_MODE_INTERNAL_DP2_MODE ;
 scalar_t__ DRM_MODE_CONNECTOR_eDP ;
 scalar_t__ ENCODER_OBJECT_ID_NONE ;
 scalar_t__ ENCODER_OBJECT_ID_NUTMEG ;
 scalar_t__ ENCODER_OBJECT_ID_TRAVIS ;
 scalar_t__ amdgpu_connector_encoder_get_dp_bridge_encoder_id (struct drm_connector*) ;
 int drm_dp_dpcd_readb (int *,int ,int*) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;

int amdgpu_atombios_dp_get_panel_mode(struct drm_encoder *encoder,
          struct drm_connector *connector)
{
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);
 struct amdgpu_connector_atom_dig *dig_connector;
 int panel_mode = DP_PANEL_MODE_EXTERNAL_DP_MODE;
 u16 dp_bridge = amdgpu_connector_encoder_get_dp_bridge_encoder_id(connector);
 u8 tmp;

 if (!amdgpu_connector->con_priv)
  return panel_mode;

 dig_connector = amdgpu_connector->con_priv;

 if (dp_bridge != ENCODER_OBJECT_ID_NONE) {

  if (drm_dp_dpcd_readb(&amdgpu_connector->ddc_bus->aux,
          DP_EDP_CONFIGURATION_CAP, &tmp) == 1) {
   if (tmp & 1)
    panel_mode = DP_PANEL_MODE_INTERNAL_DP2_MODE;
   else if ((dp_bridge == ENCODER_OBJECT_ID_NUTMEG) ||
     (dp_bridge == ENCODER_OBJECT_ID_TRAVIS))
    panel_mode = DP_PANEL_MODE_INTERNAL_DP1_MODE;
   else
    panel_mode = DP_PANEL_MODE_EXTERNAL_DP_MODE;
  }
 } else if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {

  if (drm_dp_dpcd_readb(&amdgpu_connector->ddc_bus->aux,
          DP_EDP_CONFIGURATION_CAP, &tmp) == 1) {
   if (tmp & 1)
    panel_mode = DP_PANEL_MODE_INTERNAL_DP2_MODE;
  }
 }

 return panel_mode;
}
