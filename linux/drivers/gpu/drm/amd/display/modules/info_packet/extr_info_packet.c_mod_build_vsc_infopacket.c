
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


struct TYPE_12__ {int timing_3d_format; int pixel_encoding; int display_color_depth; } ;
struct dc_stream_state {scalar_t__ view_format; scalar_t__ psr_version; scalar_t__ output_color_space; TYPE_6__ timing; TYPE_5__* link; } ;
struct dc_info_packet {int hb0; int hb1; int hb2; int hb3; int* sb; int valid; } ;
struct TYPE_8__ {scalar_t__ VSC_SDP_COLORIMETRY_SUPPORTED; } ;
struct TYPE_9__ {TYPE_2__ bits; } ;
struct TYPE_7__ {int raw; } ;
struct TYPE_10__ {TYPE_3__ dprx_feature; TYPE_1__ dpcd_rev; } ;
struct TYPE_11__ {TYPE_4__ dpcd_caps; } ;







 scalar_t__ COLOR_SPACE_2020_RGB_FULLRANGE ;
 scalar_t__ COLOR_SPACE_2020_RGB_LIMITEDRANGE ;
 scalar_t__ COLOR_SPACE_2020_YCBCR ;
 scalar_t__ COLOR_SPACE_ADOBERGB ;
 scalar_t__ COLOR_SPACE_SRGB ;
 scalar_t__ COLOR_SPACE_SRGB_LIMITED ;
 scalar_t__ COLOR_SPACE_YCBCR601 ;
 scalar_t__ COLOR_SPACE_YCBCR709 ;
 unsigned int ColorimetryRGB_DP_AdobeRGB ;
 unsigned int ColorimetryRGB_DP_ITU_R_BT2020RGB ;
 unsigned int ColorimetryRGB_DP_sRGB ;
 unsigned int ColorimetryYCC_DP_AdobeYCC ;
 unsigned int ColorimetryYCC_DP_ITU2020YCbCr ;
 unsigned int ColorimetryYCC_DP_ITU601 ;
 unsigned int ColorimetryYCC_DP_ITU709 ;







 int TIMING_3D_FORMAT_NONE ;





 scalar_t__ VIEW_3D_FORMAT_NONE ;

void mod_build_vsc_infopacket(const struct dc_stream_state *stream,
  struct dc_info_packet *info_packet)
{
 unsigned int vscPacketRevision = 0;
 unsigned int i;
 unsigned int pixelEncoding = 0;
 unsigned int colorimetryFormat = 0;
 bool stereo3dSupport = 0;

 if (stream->timing.timing_3d_format != TIMING_3D_FORMAT_NONE && stream->view_format != VIEW_3D_FORMAT_NONE) {
  vscPacketRevision = 1;
  stereo3dSupport = 1;
 }


 if (stream->psr_version != 0)
  vscPacketRevision = 2;


 if (stream->link->dpcd_caps.dpcd_rev.raw >= 0x14 &&
   stream->link->dpcd_caps.dprx_feature.bits.VSC_SDP_COLORIMETRY_SUPPORTED)
  vscPacketRevision = 5;




 if (vscPacketRevision == 0)
  return;

 if (vscPacketRevision == 0x2) {

  info_packet->hb0 = 0x00;



  info_packet->hb1 = 0x07;



  info_packet->hb2 = 0x02;



  info_packet->hb3 = 0x08;

  for (i = 0; i < 28; i++)
   info_packet->sb[i] = 0;

  info_packet->valid = 1;
 }

 if (vscPacketRevision == 0x1) {

  info_packet->hb0 = 0x00;
  info_packet->hb1 = 0x07;
  info_packet->hb2 = 0x01;
  info_packet->hb3 = 0x01;

  info_packet->valid = 1;
 }

 if (stereo3dSupport) {
  switch (stream->timing.timing_3d_format) {
  case 134:
  case 130:
  case 128:
  case 129:
   info_packet->sb[0] = 0x02;
   break;
  case 135:
  case 133:
   info_packet->sb[0] = 0x01;
   break;
  case 131:
  case 132:
   info_packet->sb[0] = 0x04;
   break;
  default:
   info_packet->sb[0] = 0x00;
   break;
  }

 }
 if (vscPacketRevision == 0x5) {

  info_packet->hb0 = 0x00;

  info_packet->hb1 = 0x07;

  info_packet->hb2 = 0x05;

  info_packet->hb3 = 0x13;

  info_packet->valid = 1;
  switch (stream->timing.pixel_encoding) {
  case 139:
   pixelEncoding = 0x0;
   break;
  case 136:
   pixelEncoding = 0x1;
   break;
  case 137:
   pixelEncoding = 0x2;
   break;
  case 138:
   pixelEncoding = 0x3;
   break;
  default:
   pixelEncoding = 0x0;
   break;
  }


  switch (stream->timing.pixel_encoding) {
  case 139:
   if ((stream->output_color_space == COLOR_SPACE_SRGB) ||
     (stream->output_color_space == COLOR_SPACE_SRGB_LIMITED))
    colorimetryFormat = ColorimetryRGB_DP_sRGB;
   else if (stream->output_color_space == COLOR_SPACE_ADOBERGB)
    colorimetryFormat = ColorimetryRGB_DP_AdobeRGB;
   else if ((stream->output_color_space == COLOR_SPACE_2020_RGB_FULLRANGE) ||
     (stream->output_color_space == COLOR_SPACE_2020_RGB_LIMITEDRANGE))
    colorimetryFormat = ColorimetryRGB_DP_ITU_R_BT2020RGB;
   break;

  case 136:
  case 137:
  case 138:



   if (stream->output_color_space == COLOR_SPACE_YCBCR601)
    colorimetryFormat = ColorimetryYCC_DP_ITU601;
   else if (stream->output_color_space == COLOR_SPACE_YCBCR709)
    colorimetryFormat = ColorimetryYCC_DP_ITU709;
   else if (stream->output_color_space == COLOR_SPACE_ADOBERGB)
    colorimetryFormat = ColorimetryYCC_DP_AdobeYCC;
   else if (stream->output_color_space == COLOR_SPACE_2020_YCBCR)
    colorimetryFormat = ColorimetryYCC_DP_ITU2020YCbCr;
   break;

  default:
   colorimetryFormat = ColorimetryRGB_DP_sRGB;
   break;
  }

  info_packet->sb[16] = (pixelEncoding << 4) | colorimetryFormat;


  switch (stream->timing.display_color_depth) {
  case 141:



   info_packet->sb[17] = 0;
   break;
  case 140:
   info_packet->sb[17] = 1;
   break;
  case 144:
   info_packet->sb[17] = 2;
   break;
  case 143:
   info_packet->sb[17] = 3;
   break;

  case 142:
   info_packet->sb[17] = 4;
   break;
  default:
   info_packet->sb[17] = 0;
   break;
  }


  if ((stream->output_color_space == COLOR_SPACE_SRGB_LIMITED) ||
    (stream->output_color_space == COLOR_SPACE_2020_RGB_LIMITEDRANGE) ||
    (pixelEncoding != 0x0)) {
   info_packet->sb[17] |= 0x80;
  }
  info_packet->sb[18] = 0;
 }

}
