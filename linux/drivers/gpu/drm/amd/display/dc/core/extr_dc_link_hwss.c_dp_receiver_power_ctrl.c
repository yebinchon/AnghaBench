
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dc_link {scalar_t__ sync_lt_in_progress; } ;
typedef int state ;


 int DP_POWER_STATE_D0 ;
 int DP_POWER_STATE_D3 ;
 int DP_SET_POWER ;
 int core_link_write_dpcd (struct dc_link*,int ,int *,int) ;

void dp_receiver_power_ctrl(struct dc_link *link, bool on)
{
 uint8_t state;

 state = on ? DP_POWER_STATE_D0 : DP_POWER_STATE_D3;

 if (link->sync_lt_in_progress)
  return;

 core_link_write_dpcd(link, DP_SET_POWER, &state,
   sizeof(state));
}
