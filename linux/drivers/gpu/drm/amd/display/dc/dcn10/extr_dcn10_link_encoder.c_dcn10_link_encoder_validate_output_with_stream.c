
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct link_encoder {int dummy; } ;
struct dcn10_link_encoder {int dummy; } ;
struct TYPE_6__ {int pixel_encoding; } ;
struct dc_stream_state {int signal; int phy_pix_clk; TYPE_2__ timing; TYPE_1__* link; } ;
struct TYPE_5__ {int connector_signal; } ;


 int PIXEL_ENCODING_RGB ;







 struct dcn10_link_encoder* TO_DCN10_LINK_ENC (struct link_encoder*) ;
 int dcn10_link_encoder_validate_dp_output (struct dcn10_link_encoder*,TYPE_2__*) ;
 int dcn10_link_encoder_validate_dvi_output (struct dcn10_link_encoder*,int ,int,TYPE_2__*) ;
 int dcn10_link_encoder_validate_hdmi_output (struct dcn10_link_encoder*,TYPE_2__*,int) ;

bool dcn10_link_encoder_validate_output_with_stream(
 struct link_encoder *enc,
 const struct dc_stream_state *stream)
{
 struct dcn10_link_encoder *enc10 = TO_DCN10_LINK_ENC(enc);
 bool is_valid;

 switch (stream->signal) {
 case 131:
 case 132:
  is_valid = dcn10_link_encoder_validate_dvi_output(
   enc10,
   stream->link->connector_signal,
   stream->signal,
   &stream->timing);
 break;
 case 129:
  is_valid = dcn10_link_encoder_validate_hdmi_output(
    enc10,
    &stream->timing,
    stream->phy_pix_clk * 10);
 break;
 case 134:
 case 133:
  is_valid = dcn10_link_encoder_validate_dp_output(
     enc10, &stream->timing);
 break;
 case 130:
  is_valid = (stream->timing.pixel_encoding == PIXEL_ENCODING_RGB) ? 1 : 0;
 break;
 case 128:
  is_valid = 1;
  break;
 default:
  is_valid = 0;
 break;
 }

 return is_valid;
}
