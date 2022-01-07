
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {scalar_t__ dpms; scalar_t__ connector_type; struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_connector_atom_dig {scalar_t__ dp_sink_type; } ;
struct TYPE_2__ {scalar_t__ hpd; } ;
struct amdgpu_connector {TYPE_1__ hpd; struct amdgpu_connector_atom_dig* con_priv; } ;


 scalar_t__ AMDGPU_HPD_NONE ;
 scalar_t__ CONNECTOR_OBJECT_ID_DISPLAYPORT ;
 scalar_t__ DRM_MODE_CONNECTOR_DisplayPort ;
 scalar_t__ DRM_MODE_DPMS_OFF ;
 scalar_t__ DRM_MODE_DPMS_ON ;
 scalar_t__ amdgpu_atombios_dp_get_dpcd (struct amdgpu_connector*) ;
 scalar_t__ amdgpu_atombios_dp_get_sinktype (struct amdgpu_connector*) ;
 scalar_t__ amdgpu_atombios_dp_needs_link_train (struct amdgpu_connector*) ;
 scalar_t__ amdgpu_display_hpd_sense (struct amdgpu_device*,scalar_t__) ;
 int amdgpu_display_hpd_set_polarity (struct amdgpu_device*,scalar_t__) ;
 int drm_helper_connector_dpms (struct drm_connector*,scalar_t__) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;

void amdgpu_connector_hotplug(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);




 if (amdgpu_connector->hpd.hpd == AMDGPU_HPD_NONE)
  return;

 amdgpu_display_hpd_set_polarity(adev, amdgpu_connector->hpd.hpd);


 if (connector->dpms != DRM_MODE_DPMS_ON)
  return;


 if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort) {
  struct amdgpu_connector_atom_dig *dig_connector =
   amdgpu_connector->con_priv;


  if (dig_connector->dp_sink_type != CONNECTOR_OBJECT_ID_DISPLAYPORT)
   return;


  dig_connector->dp_sink_type = amdgpu_atombios_dp_get_sinktype(amdgpu_connector);



  if (dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT &&
      amdgpu_display_hpd_sense(adev, amdgpu_connector->hpd.hpd) &&
      amdgpu_atombios_dp_needs_link_train(amdgpu_connector)) {

   if (amdgpu_atombios_dp_get_dpcd(amdgpu_connector))
    return;




   drm_helper_connector_dpms(connector, DRM_MODE_DPMS_OFF);
   drm_helper_connector_dpms(connector, DRM_MODE_DPMS_ON);
  }
 }
}
