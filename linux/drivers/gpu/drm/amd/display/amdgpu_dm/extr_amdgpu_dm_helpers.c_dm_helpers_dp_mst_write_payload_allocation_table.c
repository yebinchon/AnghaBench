
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_dp_mst_topology_mgr {int mst_state; } ;
struct drm_dp_mst_port {int dummy; } ;
struct dp_mst_stream_allocation_table {int dummy; } ;
struct TYPE_4__ {int pix_clk_100hz; int display_color_depth; } ;
struct dc_stream_state {TYPE_2__ timing; scalar_t__ dm_stream_context; } ;
struct dc_context {int dummy; } ;
struct amdgpu_dm_connector {struct drm_dp_mst_port* port; TYPE_1__* mst_port; } ;
struct TYPE_3__ {struct drm_dp_mst_topology_mgr mst_mgr; } ;


 int ASSERT (int) ;






 int drm_dp_calc_pbn_mode (int,int) ;
 int drm_dp_find_vcpi_slots (struct drm_dp_mst_topology_mgr*,int) ;
 int drm_dp_mst_allocate_vcpi (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*,int,int) ;
 int drm_dp_mst_reset_vcpi_slots (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*) ;
 int drm_dp_update_payload_part1 (struct drm_dp_mst_topology_mgr*) ;
 int get_payload_table (struct amdgpu_dm_connector*,struct dp_mst_stream_allocation_table*) ;

bool dm_helpers_dp_mst_write_payload_allocation_table(
  struct dc_context *ctx,
  const struct dc_stream_state *stream,
  struct dp_mst_stream_allocation_table *proposed_table,
  bool enable)
{
 struct amdgpu_dm_connector *aconnector;
 struct drm_dp_mst_topology_mgr *mst_mgr;
 struct drm_dp_mst_port *mst_port;
 int slots = 0;
 bool ret;
 int clock;
 int bpp = 0;
 int pbn = 0;

 aconnector = (struct amdgpu_dm_connector *)stream->dm_stream_context;

 if (!aconnector || !aconnector->mst_port)
  return 0;

 mst_mgr = &aconnector->mst_port->mst_mgr;

 if (!mst_mgr->mst_state)
  return 0;

 mst_port = aconnector->port;

 if (enable) {
  clock = stream->timing.pix_clk_100hz / 10;

  switch (stream->timing.display_color_depth) {

  case 129:
   bpp = 6;
   break;
  case 128:
   bpp = 8;
   break;
  case 133:
   bpp = 10;
   break;
  case 132:
   bpp = 12;
   break;
  case 131:
   bpp = 14;
   break;
  case 130:
   bpp = 16;
   break;
  default:
   ASSERT(bpp != 0);
   break;
  }

  bpp = bpp * 3;



  pbn = drm_dp_calc_pbn_mode(clock, bpp);

  slots = drm_dp_find_vcpi_slots(mst_mgr, pbn);
  ret = drm_dp_mst_allocate_vcpi(mst_mgr, mst_port, pbn, slots);

  if (!ret)
   return 0;

 } else {
  drm_dp_mst_reset_vcpi_slots(mst_mgr, mst_port);
 }

 ret = drm_dp_update_payload_part1(mst_mgr);






 get_payload_table(aconnector, proposed_table);

 if (ret)
  return 0;

 return 1;
}
