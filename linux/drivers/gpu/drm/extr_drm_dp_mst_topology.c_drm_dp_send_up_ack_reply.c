
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_sideband_msg_tx {int seqno; struct drm_dp_mst_branch* dst; } ;
struct drm_dp_mst_topology_mgr {int qlock; } ;
struct drm_dp_mst_branch {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_dp_encode_up_ack_reply (struct drm_dp_sideband_msg_tx*,int) ;
 int kfree (struct drm_dp_sideband_msg_tx*) ;
 struct drm_dp_sideband_msg_tx* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int process_single_up_tx_qlock (struct drm_dp_mst_topology_mgr*,struct drm_dp_sideband_msg_tx*) ;

__attribute__((used)) static int drm_dp_send_up_ack_reply(struct drm_dp_mst_topology_mgr *mgr,
        struct drm_dp_mst_branch *mstb,
        int req_type, int seqno, bool broadcast)
{
 struct drm_dp_sideband_msg_tx *txmsg;

 txmsg = kzalloc(sizeof(*txmsg), GFP_KERNEL);
 if (!txmsg)
  return -ENOMEM;

 txmsg->dst = mstb;
 txmsg->seqno = seqno;
 drm_dp_encode_up_ack_reply(txmsg, req_type);

 mutex_lock(&mgr->qlock);

 process_single_up_tx_qlock(mgr, txmsg);

 mutex_unlock(&mgr->qlock);

 kfree(txmsg);
 return 0;
}
