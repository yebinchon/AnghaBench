
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lane_count; } ;
struct dc_link {scalar_t__ type; TYPE_1__ cur_link_settings; } ;


 scalar_t__ LANE_COUNT_UNKNOWN ;
 scalar_t__ dc_connection_mst_branch ;
 scalar_t__ is_dp_active_dongle (struct dc_link const*) ;

__attribute__((used)) static bool allow_hpd_rx_irq(const struct dc_link *link)
{







 if ((link->cur_link_settings.lane_count != LANE_COUNT_UNKNOWN) ||
  (link->type == dc_connection_mst_branch) ||
  is_dp_active_dongle(link))
  return 1;

 return 0;
}
