
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radeon_connector_atom_dig {int* dpcd; } ;
struct radeon_connector {TYPE_1__* ddc_bus; struct radeon_connector_atom_dig* con_priv; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int aux; } ;


 int DP_SET_POWER ;
 int drm_dp_dpcd_writeb (int *,int ,int ) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 int usleep_range (int,int) ;

void radeon_dp_set_rx_power_state(struct drm_connector *connector,
      u8 power_state)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 struct radeon_connector_atom_dig *dig_connector;

 if (!radeon_connector->con_priv)
  return;

 dig_connector = radeon_connector->con_priv;


 if (dig_connector->dpcd[0] >= 0x11) {
  drm_dp_dpcd_writeb(&radeon_connector->ddc_bus->aux,
       DP_SET_POWER, power_state);
  usleep_range(1000, 2000);
 }
}
