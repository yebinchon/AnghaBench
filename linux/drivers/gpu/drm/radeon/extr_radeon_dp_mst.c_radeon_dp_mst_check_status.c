
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radeon_connector_atom_dig {int is_mst; } ;
struct radeon_connector {int mst_mgr; TYPE_1__* ddc_bus; struct radeon_connector_atom_dig* con_priv; } ;
struct TYPE_2__ {int aux; } ;


 scalar_t__ DP_SINK_COUNT_ESI ;
 int DRM_DEBUG_KMS (char*,int) ;
 int EINVAL ;
 int drm_dp_dpcd_read (int *,scalar_t__,int *,int) ;
 int drm_dp_dpcd_write (int *,scalar_t__,int *,int) ;
 int drm_dp_mst_hpd_irq (int *,int *,int*) ;
 int drm_dp_mst_topology_mgr_set_mst (int *,int) ;

int
radeon_dp_mst_check_status(struct radeon_connector *radeon_connector)
{
 struct radeon_connector_atom_dig *dig_connector = radeon_connector->con_priv;
 int retry;

 if (dig_connector->is_mst) {
  u8 esi[16] = { 0 };
  int dret;
  int ret = 0;
  bool handled;

  dret = drm_dp_dpcd_read(&radeon_connector->ddc_bus->aux,
           DP_SINK_COUNT_ESI, esi, 8);
go_again:
  if (dret == 8) {
   DRM_DEBUG_KMS("got esi %3ph\n", esi);
   ret = drm_dp_mst_hpd_irq(&radeon_connector->mst_mgr, esi, &handled);

   if (handled) {
    for (retry = 0; retry < 3; retry++) {
     int wret;
     wret = drm_dp_dpcd_write(&radeon_connector->ddc_bus->aux,
         DP_SINK_COUNT_ESI + 1, &esi[1], 3);
     if (wret == 3)
      break;
    }

    dret = drm_dp_dpcd_read(&radeon_connector->ddc_bus->aux,
       DP_SINK_COUNT_ESI, esi, 8);
    if (dret == 8) {
     DRM_DEBUG_KMS("got esi2 %3ph\n", esi);
     goto go_again;
    }
   } else
    ret = 0;

   return ret;
  } else {
   DRM_DEBUG_KMS("failed to get ESI - device may have failed %d\n", ret);
   dig_connector->is_mst = 0;
   drm_dp_mst_topology_mgr_set_mst(&radeon_connector->mst_mgr,
       dig_connector->is_mst);

  }
 }
 return -EINVAL;
}
