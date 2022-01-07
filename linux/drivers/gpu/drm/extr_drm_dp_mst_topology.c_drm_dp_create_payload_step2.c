
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_dp_payload {int payload_state; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct TYPE_2__ {int pbn; } ;
struct drm_dp_mst_port {TYPE_1__ vcpi; } ;


 int DP_PAYLOAD_REMOTE ;
 int drm_dp_payload_send_msg (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*,int,int ) ;

__attribute__((used)) static int drm_dp_create_payload_step2(struct drm_dp_mst_topology_mgr *mgr,
           struct drm_dp_mst_port *port,
           int id,
           struct drm_dp_payload *payload)
{
 int ret;
 ret = drm_dp_payload_send_msg(mgr, port, id, port->vcpi.pbn);
 if (ret < 0)
  return ret;
 payload->payload_state = DP_PAYLOAD_REMOTE;
 return ret;
}
