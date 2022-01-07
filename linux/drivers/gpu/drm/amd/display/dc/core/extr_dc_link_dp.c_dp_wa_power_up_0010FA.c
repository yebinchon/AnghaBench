
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union dp_downstream_port_present {void* byte; int member_0; } ;
typedef void* uint8_t ;
struct TYPE_6__ {int dp_keep_receiver_powered; } ;
struct TYPE_4__ {void* raw; } ;
struct TYPE_5__ {scalar_t__ dongle_type; int branch_dev_id; TYPE_1__ dpcd_rev; } ;
struct dc_link {TYPE_3__ wa_flags; TYPE_2__ dpcd_caps; } ;


 scalar_t__ DISPLAY_DONGLE_DP_VGA_CONVERTER ;


 size_t DP_DOWNSTREAMPORT_PRESENT ;
 size_t DP_DPCD_REV ;
 int core_link_read_dpcd (struct dc_link*,size_t,void**,int) ;
 int dp_receiver_power_ctrl (struct dc_link*,int) ;

__attribute__((used)) static void dp_wa_power_up_0010FA(struct dc_link *link, uint8_t *dpcd_data,
  int length)
{
 int retry = 0;
 union dp_downstream_port_present ds_port = { 0 };

 if (!link->dpcd_caps.dpcd_rev.raw) {
  do {
   dp_receiver_power_ctrl(link, 1);
   core_link_read_dpcd(link, DP_DPCD_REV,
       dpcd_data, length);
   link->dpcd_caps.dpcd_rev.raw = dpcd_data[
    DP_DPCD_REV -
    DP_DPCD_REV];
  } while (retry++ < 4 && !link->dpcd_caps.dpcd_rev.raw);
 }

 ds_port.byte = dpcd_data[DP_DOWNSTREAMPORT_PRESENT -
     DP_DPCD_REV];

 if (link->dpcd_caps.dongle_type == DISPLAY_DONGLE_DP_VGA_CONVERTER) {
  switch (link->dpcd_caps.branch_dev_id) {





  case 129:
  case 128:
   link->wa_flags.dp_keep_receiver_powered = 1;
   break;


  default:
   link->wa_flags.dp_keep_receiver_powered = 0;
   break;
  }
 } else
  link->wa_flags.dp_keep_receiver_powered = 0;
}
