
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dce110_stream_encoder {TYPE_1__* regs; } ;
struct dc_crtc_timing {int pixel_encoding; } ;
struct TYPE_2__ {scalar_t__ DIG_FE_CNTL; scalar_t__ TMDS_CNTL; } ;


 int DIG_FE_CNTL ;

 int REG_UPDATE (int ,int ,int) ;
 int TMDS_CNTL ;
 int TMDS_COLOR_FORMAT ;
 int TMDS_PIXEL_ENCODING ;

__attribute__((used)) static void dce110_stream_encoder_set_stream_attribute_helper(
  struct dce110_stream_encoder *enc110,
  struct dc_crtc_timing *crtc_timing)
{
 if (enc110->regs->TMDS_CNTL) {
  switch (crtc_timing->pixel_encoding) {
  case 128:
   REG_UPDATE(TMDS_CNTL, TMDS_PIXEL_ENCODING, 1);
   break;
  default:
   REG_UPDATE(TMDS_CNTL, TMDS_PIXEL_ENCODING, 0);
   break;
  }
  REG_UPDATE(TMDS_CNTL, TMDS_COLOR_FORMAT, 0);
 } else if (enc110->regs->DIG_FE_CNTL) {
  switch (crtc_timing->pixel_encoding) {
  case 128:
   REG_UPDATE(DIG_FE_CNTL, TMDS_PIXEL_ENCODING, 1);
   break;
  default:
   REG_UPDATE(DIG_FE_CNTL, TMDS_PIXEL_ENCODING, 0);
   break;
  }
  REG_UPDATE(DIG_FE_CNTL, TMDS_COLOR_FORMAT, 0);
 }

}
