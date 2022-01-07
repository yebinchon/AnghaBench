
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radeon_connector_atom_dig {scalar_t__* dpcd; } ;
struct radeon_connector {TYPE_1__* ddc_bus; struct radeon_connector_atom_dig* con_priv; } ;
struct TYPE_2__ {int aux; } ;


 int DP_DPCD_REV ;
 int DP_DPCD_SIZE ;
 int DRM_DEBUG_KMS (char*,int,scalar_t__*) ;
 int drm_dp_dpcd_read (int *,int ,int *,int) ;
 int memcpy (scalar_t__*,int *,int) ;
 int radeon_dp_probe_oui (struct radeon_connector*) ;

bool radeon_dp_getdpcd(struct radeon_connector *radeon_connector)
{
 struct radeon_connector_atom_dig *dig_connector = radeon_connector->con_priv;
 u8 msg[DP_DPCD_SIZE];
 int ret;

 ret = drm_dp_dpcd_read(&radeon_connector->ddc_bus->aux, DP_DPCD_REV, msg,
          DP_DPCD_SIZE);
 if (ret == DP_DPCD_SIZE) {
  memcpy(dig_connector->dpcd, msg, DP_DPCD_SIZE);

  DRM_DEBUG_KMS("DPCD: %*ph\n", (int)sizeof(dig_connector->dpcd),
         dig_connector->dpcd);

  radeon_dp_probe_oui(radeon_connector);

  return 1;
 }

 dig_connector->dpcd[0] = 0;
 return 0;
}
