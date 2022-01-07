
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cdn_dp_port {int lanes; } ;
struct TYPE_2__ {int num_lanes; int rate; } ;
struct cdn_dp_device {TYPE_1__ link; int dpcd; } ;


 int DP_LANE0_1_STATUS ;
 int DP_LINK_STATUS_SIZE ;
 int DRM_ERROR (char*) ;
 struct cdn_dp_port* cdn_dp_connected_port (struct cdn_dp_device*) ;
 scalar_t__ cdn_dp_dpcd_read (struct cdn_dp_device*,int ,int *,int) ;
 int drm_dp_channel_eq_ok (int *,int ) ;
 int drm_dp_max_lane_count (int ) ;
 int min (int ,int ) ;

__attribute__((used)) static bool cdn_dp_check_link_status(struct cdn_dp_device *dp)
{
 u8 link_status[DP_LINK_STATUS_SIZE];
 struct cdn_dp_port *port = cdn_dp_connected_port(dp);
 u8 sink_lanes = drm_dp_max_lane_count(dp->dpcd);

 if (!port || !dp->link.rate || !dp->link.num_lanes)
  return 0;

 if (cdn_dp_dpcd_read(dp, DP_LANE0_1_STATUS, link_status,
        DP_LINK_STATUS_SIZE)) {
  DRM_ERROR("Failed to get link status\n");
  return 0;
 }


 return drm_dp_channel_eq_ok(link_status, min(port->lanes, sink_lanes));
}
