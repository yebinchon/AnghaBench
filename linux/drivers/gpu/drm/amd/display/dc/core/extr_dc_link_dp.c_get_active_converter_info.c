
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int YCrCr420_CONVERSION; int YCrCr422_CONVERSION; int YCrCr420_PASS_THROUGH; int YCrCr422_PASS_THROUGH; int FRAME_SEQ_TO_FRAME_PACK; } ;
union dwnstream_port_caps_byte3_hdmi {int raw; TYPE_4__ bits; } ;
struct TYPE_12__ {int MAX_BITS_PER_COLOR_COMPONENT; } ;
union dwnstream_port_caps_byte2 {int raw; TYPE_5__ bits; } ;
struct TYPE_10__ {int DWN_STRM_PORTX_TYPE; } ;
union dwnstream_port_caps_byte0 {TYPE_3__ bits; } ;
struct TYPE_9__ {int PORT_PRESENT; int PORT_TYPE; int DETAILED_CAPS; } ;
union dp_downstream_port_present {int byte; TYPE_2__ fields; } ;
typedef int uint8_t ;
struct dp_sink_hw_fw_revision {int ieee_fw_rev; int ieee_hw_rev; } ;
struct TYPE_13__ {int dp_hdmi_max_pixel_clk_in_khz; int extendedCapValid; int dp_hdmi_max_bpc; int is_dp_hdmi_ycbcr420_converter; int is_dp_hdmi_ycbcr422_converter; int is_dp_hdmi_ycbcr420_pass_through; int is_dp_hdmi_ycbcr422_pass_through; int is_dp_hdmi_s3d_converter; void* dongle_type; } ;
struct TYPE_8__ {scalar_t__ raw; } ;
struct TYPE_14__ {int is_branch_dev; int branch_fw_revision; int branch_hw_revision; void* dongle_type; TYPE_6__ dongle_caps; TYPE_1__ dpcd_rev; } ;
struct dc_link {TYPE_7__ dpcd_caps; int ddc; } ;
typedef int dp_hw_fw_revision ;
typedef int det_caps ;


 void* DISPLAY_DONGLE_DP_DVI_CONVERTER ;
 void* DISPLAY_DONGLE_DP_HDMI_CONVERTER ;
 void* DISPLAY_DONGLE_DP_VGA_CONVERTER ;
 void* DISPLAY_DONGLE_NONE ;
 int DOWNSTREAM_DP ;







 scalar_t__ DPCD_REV_11 ;
 int DP_BRANCH_REVISION_START ;
 int DP_DOWNSTREAM_PORT_0 ;
 int core_link_read_dpcd (struct dc_link*,int ,int*,int) ;
 int ddc_service_set_dongle_type (int ,void*) ;
 int memmove (int ,int ,int) ;
 int translate_dpcd_max_bpc (int ) ;

__attribute__((used)) static void get_active_converter_info(
 uint8_t data, struct dc_link *link)
{
 union dp_downstream_port_present ds_port = { .byte = data };


 if (!ds_port.fields.PORT_PRESENT) {
  link->dpcd_caps.dongle_type = DISPLAY_DONGLE_NONE;
  ddc_service_set_dongle_type(link->ddc,
    link->dpcd_caps.dongle_type);
  link->dpcd_caps.is_branch_dev = 0;
  return;
 }


 if (ds_port.fields.PORT_TYPE == DOWNSTREAM_DP) {
  link->dpcd_caps.is_branch_dev = 0;
 }

 else {
  link->dpcd_caps.is_branch_dev = ds_port.fields.PORT_PRESENT;
 }

 switch (ds_port.fields.PORT_TYPE) {
 case 133:
  link->dpcd_caps.dongle_type = DISPLAY_DONGLE_DP_VGA_CONVERTER;
  break;
 case 134:


  link->dpcd_caps.dongle_type = DISPLAY_DONGLE_DP_DVI_CONVERTER;
  break;
 default:
  link->dpcd_caps.dongle_type = DISPLAY_DONGLE_NONE;
  break;
 }

 if (link->dpcd_caps.dpcd_rev.raw >= DPCD_REV_11) {
  uint8_t det_caps[16];
  union dwnstream_port_caps_byte0 *port_caps =
   (union dwnstream_port_caps_byte0 *)det_caps;
  core_link_read_dpcd(link, DP_DOWNSTREAM_PORT_0,
    det_caps, sizeof(det_caps));

  switch (port_caps->bits.DWN_STRM_PORTX_TYPE) {

  case 132:
   link->dpcd_caps.dongle_type = DISPLAY_DONGLE_NONE;
   break;
  case 128:
   link->dpcd_caps.dongle_type =
    DISPLAY_DONGLE_DP_VGA_CONVERTER;
   break;
  case 130:
   link->dpcd_caps.dongle_type =
    DISPLAY_DONGLE_DP_DVI_CONVERTER;
   break;
  case 129:
  case 131:

   link->dpcd_caps.dongle_type =
    DISPLAY_DONGLE_DP_HDMI_CONVERTER;

   link->dpcd_caps.dongle_caps.dongle_type = link->dpcd_caps.dongle_type;
   if (ds_port.fields.DETAILED_CAPS) {

    union dwnstream_port_caps_byte3_hdmi
     hdmi_caps = {.raw = det_caps[3] };
    union dwnstream_port_caps_byte2
     hdmi_color_caps = {.raw = det_caps[2] };
    link->dpcd_caps.dongle_caps.dp_hdmi_max_pixel_clk_in_khz =
     det_caps[1] * 2500;

    link->dpcd_caps.dongle_caps.is_dp_hdmi_s3d_converter =
     hdmi_caps.bits.FRAME_SEQ_TO_FRAME_PACK;

    if (port_caps->bits.DWN_STRM_PORTX_TYPE
      == 129) {
     link->dpcd_caps.dongle_caps.is_dp_hdmi_ycbcr422_pass_through =
       hdmi_caps.bits.YCrCr422_PASS_THROUGH;
     link->dpcd_caps.dongle_caps.is_dp_hdmi_ycbcr420_pass_through =
       hdmi_caps.bits.YCrCr420_PASS_THROUGH;
     link->dpcd_caps.dongle_caps.is_dp_hdmi_ycbcr422_converter =
       hdmi_caps.bits.YCrCr422_CONVERSION;
     link->dpcd_caps.dongle_caps.is_dp_hdmi_ycbcr420_converter =
       hdmi_caps.bits.YCrCr420_CONVERSION;
    }

    link->dpcd_caps.dongle_caps.dp_hdmi_max_bpc =
     translate_dpcd_max_bpc(
      hdmi_color_caps.bits.MAX_BITS_PER_COLOR_COMPONENT);

    if (link->dpcd_caps.dongle_caps.dp_hdmi_max_pixel_clk_in_khz != 0)
     link->dpcd_caps.dongle_caps.extendedCapValid = 1;
   }

   break;
  }
 }

 ddc_service_set_dongle_type(link->ddc, link->dpcd_caps.dongle_type);

 {
  struct dp_sink_hw_fw_revision dp_hw_fw_revision;

  core_link_read_dpcd(
   link,
   DP_BRANCH_REVISION_START,
   (uint8_t *)&dp_hw_fw_revision,
   sizeof(dp_hw_fw_revision));

  link->dpcd_caps.branch_hw_revision =
   dp_hw_fw_revision.ieee_hw_rev;

  memmove(
   link->dpcd_caps.branch_fw_revision,
   dp_hw_fw_revision.ieee_fw_rev,
   sizeof(dp_hw_fw_revision.ieee_fw_rev));
 }
}
