
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct radeon_device {int dummy; } ;
struct radeon_connector_atom_dig {int* dpcd; int is_mst; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct radeon_connector {int mst_mgr; TYPE_2__* ddc_bus; TYPE_1__ base; struct radeon_connector_atom_dig* con_priv; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_4__ {int aux; } ;


 int ASIC_IS_DCE5 (struct radeon_device*) ;
 size_t DP_DPCD_REV ;
 int DP_MSTM_CAP ;
 int DP_MST_CAP ;
 int DRM_DEBUG_KMS (char*) ;
 int drm_dp_dpcd_read (int *,int ,int*,int) ;
 int drm_dp_mst_topology_mgr_set_mst (int *,int) ;
 int radeon_mst ;

int
radeon_dp_mst_probe(struct radeon_connector *radeon_connector)
{
 struct radeon_connector_atom_dig *dig_connector = radeon_connector->con_priv;
 struct drm_device *dev = radeon_connector->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 int ret;
 u8 msg[1];

 if (!radeon_mst)
  return 0;

 if (!ASIC_IS_DCE5(rdev))
  return 0;

 if (dig_connector->dpcd[DP_DPCD_REV] < 0x12)
  return 0;

 ret = drm_dp_dpcd_read(&radeon_connector->ddc_bus->aux, DP_MSTM_CAP, msg,
          1);
 if (ret) {
  if (msg[0] & DP_MST_CAP) {
   DRM_DEBUG_KMS("Sink is MST capable\n");
   dig_connector->is_mst = 1;
  } else {
   DRM_DEBUG_KMS("Sink is not MST capable\n");
   dig_connector->is_mst = 0;
  }

 }
 drm_dp_mst_topology_mgr_set_mst(&radeon_connector->mst_mgr,
     dig_connector->is_mst);
 return dig_connector->is_mst;
}
