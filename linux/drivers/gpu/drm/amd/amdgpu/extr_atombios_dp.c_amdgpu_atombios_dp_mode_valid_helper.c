
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int clock; } ;
struct drm_connector {int dummy; } ;
struct amdgpu_connector_atom_dig {int dpcd; } ;
struct amdgpu_connector {struct amdgpu_connector_atom_dig* con_priv; } ;


 int MODE_CLOCK_HIGH ;
 int MODE_OK ;
 int amdgpu_atombios_dp_get_dp_link_config (struct drm_connector*,int ,int ,unsigned int*,unsigned int*) ;
 int amdgpu_connector_is_dp12_capable (struct drm_connector*) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;

int amdgpu_atombios_dp_mode_valid_helper(struct drm_connector *connector,
      struct drm_display_mode *mode)
{
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);
 struct amdgpu_connector_atom_dig *dig_connector;
 unsigned dp_lanes, dp_clock;
 int ret;

 if (!amdgpu_connector->con_priv)
  return MODE_CLOCK_HIGH;
 dig_connector = amdgpu_connector->con_priv;

 ret = amdgpu_atombios_dp_get_dp_link_config(connector, dig_connector->dpcd,
          mode->clock, &dp_lanes, &dp_clock);
 if (ret)
  return MODE_CLOCK_HIGH;

 if ((dp_clock == 540000) &&
     (!amdgpu_connector_is_dp12_capable(connector)))
  return MODE_CLOCK_HIGH;

 return MODE_OK;
}
