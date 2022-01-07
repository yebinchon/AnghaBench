
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_sideband_msg_tx {scalar_t__ state; size_t seqno; int next; } ;
struct drm_dp_mst_topology_mgr {int qlock; int tx_waitq; } ;
struct drm_dp_mst_branch {int ** tx_slots; struct drm_dp_mst_topology_mgr* mgr; } ;


 int DRM_DEBUG_KMS (char*,struct drm_dp_sideband_msg_tx*,scalar_t__,size_t) ;
 scalar_t__ DRM_DP_SIDEBAND_TX_QUEUED ;
 scalar_t__ DRM_DP_SIDEBAND_TX_SENT ;
 scalar_t__ DRM_DP_SIDEBAND_TX_START_SEND ;
 scalar_t__ DRM_DP_SIDEBAND_TX_TIMEOUT ;
 int EIO ;
 int HZ ;
 int check_txmsg_state (struct drm_dp_mst_topology_mgr*,struct drm_dp_sideband_msg_tx*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_timeout (int ,int ,int) ;

__attribute__((used)) static int drm_dp_mst_wait_tx_reply(struct drm_dp_mst_branch *mstb,
        struct drm_dp_sideband_msg_tx *txmsg)
{
 struct drm_dp_mst_topology_mgr *mgr = mstb->mgr;
 int ret;

 ret = wait_event_timeout(mgr->tx_waitq,
     check_txmsg_state(mgr, txmsg),
     (4 * HZ));
 mutex_lock(&mstb->mgr->qlock);
 if (ret > 0) {
  if (txmsg->state == DRM_DP_SIDEBAND_TX_TIMEOUT) {
   ret = -EIO;
   goto out;
  }
 } else {
  DRM_DEBUG_KMS("timedout msg send %p %d %d\n", txmsg, txmsg->state, txmsg->seqno);


  ret = -EIO;


  if (txmsg->state == DRM_DP_SIDEBAND_TX_QUEUED ||
      txmsg->state == DRM_DP_SIDEBAND_TX_START_SEND) {
   list_del(&txmsg->next);
  }

  if (txmsg->state == DRM_DP_SIDEBAND_TX_START_SEND ||
      txmsg->state == DRM_DP_SIDEBAND_TX_SENT) {
   mstb->tx_slots[txmsg->seqno] = ((void*)0);
  }
 }
out:
 mutex_unlock(&mgr->qlock);

 return ret;
}
