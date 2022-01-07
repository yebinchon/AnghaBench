
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_sideband_msg_tx {int next; } ;
struct drm_dp_mst_topology_mgr {int qlock; int tx_msg_downq; } ;


 int list_add_tail (int *,int *) ;
 scalar_t__ list_is_singular (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int process_single_down_tx_qlock (struct drm_dp_mst_topology_mgr*) ;

__attribute__((used)) static void drm_dp_queue_down_tx(struct drm_dp_mst_topology_mgr *mgr,
     struct drm_dp_sideband_msg_tx *txmsg)
{
 mutex_lock(&mgr->qlock);
 list_add_tail(&txmsg->next, &mgr->tx_msg_downq);
 if (list_is_singular(&mgr->tx_msg_downq))
  process_single_down_tx_qlock(mgr);
 mutex_unlock(&mgr->qlock);
}
