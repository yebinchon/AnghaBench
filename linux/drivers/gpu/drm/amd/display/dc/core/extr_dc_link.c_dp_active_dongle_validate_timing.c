
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_dongle_caps {scalar_t__ dongle_type; int extendedCapValid; int dp_hdmi_max_bpc; int dp_hdmi_max_pixel_clk_in_khz; int is_dp_hdmi_ycbcr420_pass_through; int is_dp_hdmi_ycbcr422_pass_through; } ;
struct dpcd_caps {int dongle_type; struct dc_dongle_caps dongle_caps; } ;
struct dc_crtc_timing {int pixel_encoding; int display_color_depth; } ;
 scalar_t__ DISPLAY_DONGLE_DP_HDMI_CONVERTER ;





 int get_timing_pixel_clock_100hz (struct dc_crtc_timing const*) ;

__attribute__((used)) static bool dp_active_dongle_validate_timing(
  const struct dc_crtc_timing *timing,
  const struct dpcd_caps *dpcd_caps)
{
 const struct dc_dongle_caps *dongle_caps = &dpcd_caps->dongle_caps;

 switch (dpcd_caps->dongle_type) {
 case 132:
 case 134:
 case 133:
  if (timing->pixel_encoding == 131)
   return 1;
  else
   return 0;
 default:
  break;
 }

 if (dongle_caps->dongle_type != DISPLAY_DONGLE_DP_HDMI_CONVERTER ||
  dongle_caps->extendedCapValid == 0)
  return 1;


 switch (timing->pixel_encoding) {
 case 131:
 case 128:
  break;
 case 129:
  if (!dongle_caps->is_dp_hdmi_ycbcr422_pass_through)
   return 0;
  break;
 case 130:
  if (!dongle_caps->is_dp_hdmi_ycbcr420_pass_through)
   return 0;
  break;
 default:

  return 0;
 }

 switch (timing->display_color_depth) {
 case 136:
 case 135:

  break;
 case 140:
  if (dongle_caps->dp_hdmi_max_bpc < 10)
   return 0;
  break;
 case 139:
  if (dongle_caps->dp_hdmi_max_bpc < 12)
   return 0;
  break;
 case 138:
 case 137:
 default:

  return 0;
 }

 if (get_timing_pixel_clock_100hz(timing) > (dongle_caps->dp_hdmi_max_pixel_clk_in_khz * 10))
  return 0;

 return 1;
}
