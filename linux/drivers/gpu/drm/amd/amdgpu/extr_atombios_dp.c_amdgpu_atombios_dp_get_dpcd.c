
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct amdgpu_connector_atom_dig {scalar_t__* dpcd; } ;
struct amdgpu_connector {TYPE_1__* ddc_bus; struct amdgpu_connector_atom_dig* con_priv; } ;
struct TYPE_2__ {int aux; } ;


 int DP_DPCD_REV ;
 int DP_DPCD_SIZE ;
 int DRM_DEBUG_KMS (char*,int,scalar_t__*) ;
 int EINVAL ;
 int amdgpu_atombios_dp_probe_oui (struct amdgpu_connector*) ;
 int drm_dp_dpcd_read (int *,int ,int *,int) ;
 int memcpy (scalar_t__*,int *,int) ;

int amdgpu_atombios_dp_get_dpcd(struct amdgpu_connector *amdgpu_connector)
{
 struct amdgpu_connector_atom_dig *dig_connector = amdgpu_connector->con_priv;
 u8 msg[DP_DPCD_SIZE];
 int ret;

 ret = drm_dp_dpcd_read(&amdgpu_connector->ddc_bus->aux, DP_DPCD_REV,
          msg, DP_DPCD_SIZE);
 if (ret == DP_DPCD_SIZE) {
  memcpy(dig_connector->dpcd, msg, DP_DPCD_SIZE);

  DRM_DEBUG_KMS("DPCD: %*ph\n", (int)sizeof(dig_connector->dpcd),
         dig_connector->dpcd);

  amdgpu_atombios_dp_probe_oui(amdgpu_connector);

  return 0;
 }

 dig_connector->dpcd[0] = 0;
 return -EINVAL;
}
