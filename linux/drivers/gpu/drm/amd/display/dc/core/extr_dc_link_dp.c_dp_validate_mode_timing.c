
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_link_settings {int dummy; } ;
struct dc_link {int dummy; } ;
struct dc_crtc_timing {int pix_clk_100hz; int h_addressable; int v_addressable; } ;


 int dc_bandwidth_in_kbps_from_timing (struct dc_crtc_timing const*) ;
 int dc_link_bandwidth_kbps (struct dc_link*,struct dc_link_settings const*) ;
 struct dc_link_settings* dc_link_get_link_cap (struct dc_link*) ;

bool dp_validate_mode_timing(
 struct dc_link *link,
 const struct dc_crtc_timing *timing)
{
 uint32_t req_bw;
 uint32_t max_bw;

 const struct dc_link_settings *link_setting;


 if ((timing->pix_clk_100hz / 10) == (uint32_t) 25175 &&
  timing->h_addressable == (uint32_t) 640 &&
  timing->v_addressable == (uint32_t) 480)
  return 1;

 link_setting = dc_link_get_link_cap(link);







 req_bw = dc_bandwidth_in_kbps_from_timing(timing);
 max_bw = dc_link_bandwidth_kbps(link, link_setting);

 if (req_bw <= max_bw) {
  return 1;
 } else
  return 0;
}
