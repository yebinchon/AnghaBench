
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_mst_topology_mgr {int lock; scalar_t__ mst_primary; int aux; int * dpcd; } ;


 int DP_DPCD_REV ;
 int DP_GUID ;
 int DP_MSTM_CTRL ;
 int DP_MST_EN ;
 int DP_RECEIVER_CAP_SIZE ;
 int DP_UPSTREAM_IS_SRC ;
 int DP_UP_REQ_EN ;
 int DRM_DEBUG_KMS (char*) ;
 int drm_dp_check_mstb_guid (scalar_t__,int *) ;
 int drm_dp_dpcd_read (int ,int ,int *,int) ;
 int drm_dp_dpcd_writeb (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_dp_mst_topology_mgr_resume(struct drm_dp_mst_topology_mgr *mgr)
{
 int ret = 0;

 mutex_lock(&mgr->lock);

 if (mgr->mst_primary) {
  int sret;
  u8 guid[16];

  sret = drm_dp_dpcd_read(mgr->aux, DP_DPCD_REV, mgr->dpcd, DP_RECEIVER_CAP_SIZE);
  if (sret != DP_RECEIVER_CAP_SIZE) {
   DRM_DEBUG_KMS("dpcd read failed - undocked during suspend?\n");
   ret = -1;
   goto out_unlock;
  }

  ret = drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL,
      DP_MST_EN | DP_UP_REQ_EN | DP_UPSTREAM_IS_SRC);
  if (ret < 0) {
   DRM_DEBUG_KMS("mst write failed - undocked during suspend?\n");
   ret = -1;
   goto out_unlock;
  }


  sret = drm_dp_dpcd_read(mgr->aux, DP_GUID, guid, 16);
  if (sret != 16) {
   DRM_DEBUG_KMS("dpcd read failed - undocked during suspend?\n");
   ret = -1;
   goto out_unlock;
  }
  drm_dp_check_mstb_guid(mgr->mst_primary, guid);

  ret = 0;
 } else
  ret = -1;

out_unlock:
 mutex_unlock(&mgr->lock);
 return ret;
}
