
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_mst_topology_mgr {int sink_count; } ;


 int DP_DOWN_REP_MSG_RDY ;
 int DP_UP_REQ_MSG_RDY ;
 int drm_dp_mst_handle_down_rep (struct drm_dp_mst_topology_mgr*) ;
 int drm_dp_mst_handle_up_req (struct drm_dp_mst_topology_mgr*) ;
 int drm_dp_mst_kick_tx (struct drm_dp_mst_topology_mgr*) ;

int drm_dp_mst_hpd_irq(struct drm_dp_mst_topology_mgr *mgr, u8 *esi, bool *handled)
{
 int ret = 0;
 int sc;
 *handled = 0;
 sc = esi[0] & 0x3f;

 if (sc != mgr->sink_count) {
  mgr->sink_count = sc;
  *handled = 1;
 }

 if (esi[1] & DP_DOWN_REP_MSG_RDY) {
  ret = drm_dp_mst_handle_down_rep(mgr);
  *handled = 1;
 }

 if (esi[1] & DP_UP_REQ_MSG_RDY) {
  ret |= drm_dp_mst_handle_up_req(mgr);
  *handled = 1;
 }

 drm_dp_mst_kick_tx(mgr);
 return ret;
}
