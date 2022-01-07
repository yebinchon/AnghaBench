
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_dp_mst_topology_mgr {int mst_state; } ;
struct drm_dp_mst_port {int dummy; } ;
struct dc_stream_state {scalar_t__ dm_stream_context; } ;
struct dc_context {int dummy; } ;
struct amdgpu_dm_connector {TYPE_1__* mst_port; struct drm_dp_mst_port* port; } ;
struct TYPE_2__ {struct drm_dp_mst_topology_mgr mst_mgr; } ;


 int drm_dp_mst_deallocate_vcpi (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*) ;
 int drm_dp_update_payload_part2 (struct drm_dp_mst_topology_mgr*) ;

bool dm_helpers_dp_mst_send_payload_allocation(
  struct dc_context *ctx,
  const struct dc_stream_state *stream,
  bool enable)
{
 struct amdgpu_dm_connector *aconnector;
 struct drm_dp_mst_topology_mgr *mst_mgr;
 struct drm_dp_mst_port *mst_port;
 int ret;

 aconnector = (struct amdgpu_dm_connector *)stream->dm_stream_context;

 if (!aconnector || !aconnector->mst_port)
  return 0;

 mst_port = aconnector->port;

 mst_mgr = &aconnector->mst_port->mst_mgr;

 if (!mst_mgr->mst_state)
  return 0;

 ret = drm_dp_update_payload_part2(mst_mgr);

 if (ret)
  return 0;

 if (!enable)
  drm_dp_mst_deallocate_vcpi(mst_mgr, mst_port);

 return 1;
}
