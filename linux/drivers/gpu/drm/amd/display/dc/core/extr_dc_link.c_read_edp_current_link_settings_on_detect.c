
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ MAX_DOWN_SPREAD; } ;
struct TYPE_8__ {int member_0; } ;
union max_down_spread {scalar_t__ raw; TYPE_6__ bits; TYPE_2__ member_0; } ;
struct TYPE_9__ {int LANE_COUNT_SET; } ;
struct TYPE_7__ {int member_0; } ;
union lane_count_set {scalar_t__ raw; TYPE_3__ bits; TYPE_1__ member_0; } ;
typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_11__ {int use_link_rate_set; int link_spread; scalar_t__ link_rate; scalar_t__ link_rate_set; int lane_count; } ;
struct TYPE_10__ {scalar_t__ edp_supported_link_rates_count; scalar_t__* edp_supported_link_rates; } ;
struct dc_link {TYPE_5__ cur_link_settings; TYPE_4__ dpcd_caps; } ;
typedef int max_down_spread ;
typedef int link_rate_set ;
typedef int link_bw_set ;
typedef int lane_count_set ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;


 int DC_ERROR_UNEXPECTED ;
 int DC_OK ;
 int DP_LANE_COUNT_SET ;
 int DP_LINK_BW_SET ;
 int DP_LINK_RATE_SET ;
 int DP_MAX_DOWNSPREAD ;
 int LINK_SPREAD_05_DOWNSPREAD_30KHZ ;
 int LINK_SPREAD_DISABLED ;
 int core_link_read_dpcd (struct dc_link*,int ,scalar_t__*,int) ;
 int msleep (int) ;

__attribute__((used)) static void read_edp_current_link_settings_on_detect(struct dc_link *link)
{
 union lane_count_set lane_count_set = { {0} };
 uint8_t link_bw_set;
 uint8_t link_rate_set;
 uint32_t read_dpcd_retry_cnt = 10;
 enum dc_status status = DC_ERROR_UNEXPECTED;
 int i;
 union max_down_spread max_down_spread = { {0} };


 for (i = 0; i < read_dpcd_retry_cnt; i++) {
  status = core_link_read_dpcd(
    link,
    DP_LANE_COUNT_SET,
    &lane_count_set.raw,
    sizeof(lane_count_set));





  if (status == DC_OK) {
   link->cur_link_settings.lane_count = lane_count_set.bits.LANE_COUNT_SET;
   break;
  }

  msleep(8);
 }


 core_link_read_dpcd(link, DP_LINK_BW_SET,
   &link_bw_set, sizeof(link_bw_set));

 if (link_bw_set == 0) {



  core_link_read_dpcd(link, DP_LINK_RATE_SET,
    &link_rate_set, sizeof(link_rate_set));

  if (link_rate_set < link->dpcd_caps.edp_supported_link_rates_count) {
   link->cur_link_settings.link_rate =
    link->dpcd_caps.edp_supported_link_rates[link_rate_set];
   link->cur_link_settings.link_rate_set = link_rate_set;
   link->cur_link_settings.use_link_rate_set = 1;
  }
 } else {
  link->cur_link_settings.link_rate = link_bw_set;
  link->cur_link_settings.use_link_rate_set = 0;
 }

 core_link_read_dpcd(link, DP_MAX_DOWNSPREAD,
   &max_down_spread.raw, sizeof(max_down_spread));
 link->cur_link_settings.link_spread =
  max_down_spread.bits.MAX_DOWN_SPREAD ?
  LINK_SPREAD_05_DOWNSPREAD_30KHZ : LINK_SPREAD_DISABLED;
}
