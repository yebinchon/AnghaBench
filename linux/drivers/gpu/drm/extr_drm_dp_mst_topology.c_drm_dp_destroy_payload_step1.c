
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_payload {int payload_state; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_dp_mst_port {int dummy; } ;


 int DP_PAYLOAD_DELETE_LOCAL ;
 int DRM_DEBUG_KMS (char*) ;
 int drm_dp_dpcd_write_payload (struct drm_dp_mst_topology_mgr*,int,struct drm_dp_payload*) ;
 int drm_dp_payload_send_msg (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*,int,int ) ;

__attribute__((used)) static int drm_dp_destroy_payload_step1(struct drm_dp_mst_topology_mgr *mgr,
     struct drm_dp_mst_port *port,
     int id,
     struct drm_dp_payload *payload)
{
 DRM_DEBUG_KMS("\n");

 if (port) {
  drm_dp_payload_send_msg(mgr, port, id, 0);
 }

 drm_dp_dpcd_write_payload(mgr, id, payload);
 payload->payload_state = DP_PAYLOAD_DELETE_LOCAL;
 return 0;
}
