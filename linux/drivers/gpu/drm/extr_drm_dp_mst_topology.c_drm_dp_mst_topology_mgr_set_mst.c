
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_payload {int num_slots; scalar_t__ start_slot; } ;
struct drm_dp_mst_topology_mgr {int mst_state; int* dpcd; int max_payloads; int lock; scalar_t__ vcpi_mask; scalar_t__ payload_mask; int payloads; int aux; struct drm_dp_mst_branch* mst_primary; int work; int pbn_div; } ;
struct drm_dp_mst_branch {struct drm_dp_mst_topology_mgr* mgr; } ;


 int DP_DPCD_REV ;
 int DP_MAX_LANE_COUNT_MASK ;
 int DP_MSTM_CTRL ;
 int DP_MST_EN ;
 int DP_RECEIVER_CAP_SIZE ;
 int DP_UPSTREAM_IS_SRC ;
 int DP_UP_REQ_EN ;
 int DRM_DEBUG_KMS (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int WARN_ON (struct drm_dp_mst_branch*) ;
 struct drm_dp_mst_branch* drm_dp_add_mst_branch_device (int,int *) ;
 int drm_dp_dpcd_read (int ,int ,int*,int) ;
 int drm_dp_dpcd_write_payload (struct drm_dp_mst_topology_mgr*,int ,struct drm_dp_payload*) ;
 int drm_dp_dpcd_writeb (int ,int ,int) ;
 int drm_dp_get_vc_payload_bw (int,int,int *) ;
 int drm_dp_mst_topology_get_mstb (struct drm_dp_mst_branch*) ;
 int drm_dp_mst_topology_put_mstb (struct drm_dp_mst_branch*) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,scalar_t__*) ;
 int system_long_wq ;

int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool mst_state)
{
 int ret = 0;
 struct drm_dp_mst_branch *mstb = ((void*)0);

 mutex_lock(&mgr->lock);
 if (mst_state == mgr->mst_state)
  goto out_unlock;

 mgr->mst_state = mst_state;

 if (mst_state) {
  WARN_ON(mgr->mst_primary);


  ret = drm_dp_dpcd_read(mgr->aux, DP_DPCD_REV, mgr->dpcd, DP_RECEIVER_CAP_SIZE);
  if (ret != DP_RECEIVER_CAP_SIZE) {
   DRM_DEBUG_KMS("failed to read DPCD\n");
   goto out_unlock;
  }

  if (!drm_dp_get_vc_payload_bw(mgr->dpcd[1],
           mgr->dpcd[2] & DP_MAX_LANE_COUNT_MASK,
           &mgr->pbn_div)) {
   ret = -EINVAL;
   goto out_unlock;
  }


  mstb = drm_dp_add_mst_branch_device(1, ((void*)0));
  if (mstb == ((void*)0)) {
   ret = -ENOMEM;
   goto out_unlock;
  }
  mstb->mgr = mgr;


  mgr->mst_primary = mstb;
  drm_dp_mst_topology_get_mstb(mgr->mst_primary);

  ret = drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL,
        DP_MST_EN | DP_UP_REQ_EN | DP_UPSTREAM_IS_SRC);
  if (ret < 0) {
   goto out_unlock;
  }

  {
   struct drm_dp_payload reset_pay;
   reset_pay.start_slot = 0;
   reset_pay.num_slots = 0x3f;
   drm_dp_dpcd_write_payload(mgr, 0, &reset_pay);
  }

  queue_work(system_long_wq, &mgr->work);

  ret = 0;
 } else {

  mstb = mgr->mst_primary;
  mgr->mst_primary = ((void*)0);

  drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL, 0);
  ret = 0;
  memset(mgr->payloads, 0, mgr->max_payloads * sizeof(struct drm_dp_payload));
  mgr->payload_mask = 0;
  set_bit(0, &mgr->payload_mask);
  mgr->vcpi_mask = 0;
 }

out_unlock:
 mutex_unlock(&mgr->lock);
 if (mstb)
  drm_dp_mst_topology_put_mstb(mstb);
 return ret;

}
