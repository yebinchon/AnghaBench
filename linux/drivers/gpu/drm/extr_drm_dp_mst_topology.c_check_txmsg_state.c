
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_sideband_msg_tx {int state; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;


 unsigned int DRM_DP_SIDEBAND_TX_RX ;
 unsigned int DRM_DP_SIDEBAND_TX_TIMEOUT ;
 unsigned int READ_ONCE (int ) ;

__attribute__((used)) static bool check_txmsg_state(struct drm_dp_mst_topology_mgr *mgr,
         struct drm_dp_sideband_msg_tx *txmsg)
{
 unsigned int state;






 state = READ_ONCE(txmsg->state);
 return (state == DRM_DP_SIDEBAND_TX_RX ||
  state == DRM_DP_SIDEBAND_TX_TIMEOUT);
}
