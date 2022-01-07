
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct link_encoder {int dummy; } ;
struct dce110_link_encoder {int dummy; } ;
struct TYPE_6__ {int pixel_encoding; } ;
struct dc_stream_state {int signal; TYPE_2__ timing; int phy_pix_clk; TYPE_1__* link; } ;
struct TYPE_5__ {int connector_signal; } ;


 int PIXEL_ENCODING_RGB ;
 struct dce110_link_encoder* TO_DCE110_LINK_ENC (struct link_encoder*) ;
 int dce110_link_encoder_validate_dp_output (struct dce110_link_encoder*,TYPE_2__*) ;
 int dce110_link_encoder_validate_dvi_output (struct dce110_link_encoder*,int ,int,TYPE_2__*) ;
 int dce110_link_encoder_validate_hdmi_output (struct dce110_link_encoder*,TYPE_2__*,int ) ;

bool dce110_link_encoder_validate_output_with_stream(
 struct link_encoder *enc,
 const struct dc_stream_state *stream)
{
 struct dce110_link_encoder *enc110 = TO_DCE110_LINK_ENC(enc);
 bool is_valid;

 switch (stream->signal) {
 case 132:
 case 133:
  is_valid = dce110_link_encoder_validate_dvi_output(
   enc110,
   stream->link->connector_signal,
   stream->signal,
   &stream->timing);
 break;
 case 130:
  is_valid = dce110_link_encoder_validate_hdmi_output(
    enc110,
    &stream->timing,
    stream->phy_pix_clk);
 break;
 case 135:
 case 134:
  is_valid = dce110_link_encoder_validate_dp_output(
     enc110, &stream->timing);
 break;
 case 131:
 case 129:
  is_valid =
   (stream->timing.
    pixel_encoding == PIXEL_ENCODING_RGB) ? 1 : 0;
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
