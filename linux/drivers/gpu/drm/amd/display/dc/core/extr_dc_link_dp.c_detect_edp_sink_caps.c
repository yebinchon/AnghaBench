
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int supported_link_rates ;
struct TYPE_10__ {scalar_t__ link_rate; } ;
struct TYPE_6__ {scalar_t__ raw; } ;
struct TYPE_9__ {size_t edp_supported_link_rates_count; int* edp_supported_link_rates; TYPE_1__ dpcd_rev; } ;
struct dc_link {TYPE_5__ reported_link_cap; TYPE_5__ verified_link_cap; TYPE_4__ dpcd_caps; TYPE_3__* dc; } ;
typedef enum dc_link_rate { ____Placeholder_dc_link_rate } dc_link_rate ;
struct TYPE_7__ {scalar_t__ optimize_edp_link_rate; } ;
struct TYPE_8__ {TYPE_2__ config; } ;


 scalar_t__ DPCD_REV_14 ;
 int DP_SUPPORTED_LINK_RATES ;
 scalar_t__ LINK_RATE_UNKNOWN ;
 int core_link_read_dpcd (struct dc_link*,int ,int*,int) ;
 int linkRateInKHzToLinkRateMultiplier (int) ;
 int memset (int*,int ,int) ;
 int retrieve_link_cap (struct dc_link*) ;

void detect_edp_sink_caps(struct dc_link *link)
{
 uint8_t supported_link_rates[16];
 uint32_t entry;
 uint32_t link_rate_in_khz;
 enum dc_link_rate link_rate = LINK_RATE_UNKNOWN;

 retrieve_link_cap(link);
 link->dpcd_caps.edp_supported_link_rates_count = 0;
 memset(supported_link_rates, 0, sizeof(supported_link_rates));

 if (link->dpcd_caps.dpcd_rev.raw >= DPCD_REV_14 &&
   (link->dc->config.optimize_edp_link_rate ||
   link->reported_link_cap.link_rate == LINK_RATE_UNKNOWN)) {

  core_link_read_dpcd(link, DP_SUPPORTED_LINK_RATES,
       supported_link_rates, sizeof(supported_link_rates));

  for (entry = 0; entry < 16; entry += 2) {


   link_rate_in_khz = (supported_link_rates[entry+1] * 0x100 +
          supported_link_rates[entry]) * 200;

   if (link_rate_in_khz != 0) {
    link_rate = linkRateInKHzToLinkRateMultiplier(link_rate_in_khz);
    link->dpcd_caps.edp_supported_link_rates[link->dpcd_caps.edp_supported_link_rates_count] = link_rate;
    link->dpcd_caps.edp_supported_link_rates_count++;

    if (link->reported_link_cap.link_rate < link_rate)
     link->reported_link_cap.link_rate = link_rate;
   }
  }
 }
 link->verified_link_cap = link->reported_link_cap;
}
