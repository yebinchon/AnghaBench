
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_dp_sideband_msg_tx {int seqno; TYPE_1__* dst; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct TYPE_2__ {int ** tx_slots; } ;


 unsigned int ARRAY_SIZE (int **) ;
 int DRM_DEBUG_KMS (char*,int) ;
 int WARN_ON (int) ;
 int process_single_tx_qlock (struct drm_dp_mst_topology_mgr*,struct drm_dp_sideband_msg_tx*,int) ;

__attribute__((used)) static void process_single_up_tx_qlock(struct drm_dp_mst_topology_mgr *mgr,
           struct drm_dp_sideband_msg_tx *txmsg)
{
 int ret;


 ret = process_single_tx_qlock(mgr, txmsg, 1);

 if (ret != 1)
  DRM_DEBUG_KMS("failed to send msg in q %d\n", ret);

 if (txmsg->seqno != -1) {
  WARN_ON((unsigned int)txmsg->seqno >
   ARRAY_SIZE(txmsg->dst->tx_slots));
  txmsg->dst->tx_slots[txmsg->seqno] = ((void*)0);
 }
}
