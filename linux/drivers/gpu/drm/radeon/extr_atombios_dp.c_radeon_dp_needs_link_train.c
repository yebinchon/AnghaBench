
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radeon_connector_atom_dig {int dp_lane_count; } ;
struct radeon_connector {TYPE_1__* ddc_bus; struct radeon_connector_atom_dig* con_priv; } ;
struct TYPE_2__ {int aux; } ;


 int DP_LINK_STATUS_SIZE ;
 scalar_t__ drm_dp_channel_eq_ok (int *,int ) ;
 scalar_t__ drm_dp_dpcd_read_link_status (int *,int *) ;

bool radeon_dp_needs_link_train(struct radeon_connector *radeon_connector)
{
 u8 link_status[DP_LINK_STATUS_SIZE];
 struct radeon_connector_atom_dig *dig = radeon_connector->con_priv;

 if (drm_dp_dpcd_read_link_status(&radeon_connector->ddc_bus->aux, link_status)
     <= 0)
  return 0;
 if (drm_dp_channel_eq_ok(link_status, dig->dp_lane_count))
  return 0;
 return 1;
}
