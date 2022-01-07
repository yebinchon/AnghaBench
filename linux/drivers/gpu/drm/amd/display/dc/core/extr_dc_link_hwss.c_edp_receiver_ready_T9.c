
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dc_link {TYPE_3__* local_sink; } ;
typedef int sinkstatus ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
typedef int edpRev ;
struct TYPE_4__ {int extra_delay_backlight_off; } ;
struct TYPE_5__ {TYPE_1__ panel_patch; } ;
struct TYPE_6__ {TYPE_2__ edid_caps; } ;


 int DC_OK ;
 unsigned char DP_EDP_12 ;
 int DP_EDP_DPCD_REV ;
 int DP_SINK_STATUS ;
 int core_link_read_dpcd (struct dc_link*,int ,unsigned char*,int) ;
 int udelay (int) ;

bool edp_receiver_ready_T9(struct dc_link *link)
{
 unsigned int tries = 0;
 unsigned char sinkstatus = 0;
 unsigned char edpRev = 0;
 enum dc_status result = DC_OK;
 result = core_link_read_dpcd(link, DP_EDP_DPCD_REV, &edpRev, sizeof(edpRev));
 if (edpRev < DP_EDP_12)
  return 1;

 do {
  sinkstatus = 1;
  result = core_link_read_dpcd(link, DP_SINK_STATUS, &sinkstatus, sizeof(sinkstatus));
  if (sinkstatus == 0)
   break;
  if (result != DC_OK)
   break;
  udelay(100);
 } while (++tries < 50);

 if (link->local_sink->edid_caps.panel_patch.extra_delay_backlight_off > 0)
  udelay(link->local_sink->edid_caps.panel_patch.extra_delay_backlight_off * 1000);

 return result;
}
