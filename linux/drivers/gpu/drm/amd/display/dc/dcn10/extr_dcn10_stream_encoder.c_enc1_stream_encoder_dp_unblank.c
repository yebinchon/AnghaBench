
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct stream_encoder {int dummy; } ;
struct TYPE_4__ {scalar_t__ link_rate; } ;
struct TYPE_3__ {scalar_t__ pixel_encoding; int pix_clk_100hz; } ;
struct encoder_unblank_param {TYPE_2__ link_settings; TYPE_1__ timing; } ;
struct dcn10_stream_encoder {int dummy; } ;


 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DIG_FE_CNTL ;
 int DIG_START ;
 int DP_STEER_FIFO ;
 int DP_STEER_FIFO_RESET ;
 int DP_VID_M ;
 int DP_VID_M_N_GEN_EN ;
 int DP_VID_N ;
 int DP_VID_N_MUL ;
 int DP_VID_STREAM_CNTL ;
 int DP_VID_STREAM_ENABLE ;
 int DP_VID_TIMING ;
 int LINK_RATE_REF_FREQ_IN_KHZ ;
 scalar_t__ LINK_RATE_UNKNOWN ;
 scalar_t__ PIXEL_ENCODING_YCBCR420 ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int div_u64 (int,int) ;
 int udelay (int) ;

void enc1_stream_encoder_dp_unblank(
 struct stream_encoder *enc,
 const struct encoder_unblank_param *param)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);

 if (param->link_settings.link_rate != LINK_RATE_UNKNOWN) {
  uint32_t n_vid = 0x8000;
  uint32_t m_vid;
  uint32_t n_multiply = 0;
  uint64_t m_vid_l = n_vid;


  if (param->timing.pixel_encoding == PIXEL_ENCODING_YCBCR420) {

   n_multiply = 1;
  }




  m_vid_l *= param->timing.pix_clk_100hz / 10;
  m_vid_l = div_u64(m_vid_l,
   param->link_settings.link_rate
    * LINK_RATE_REF_FREQ_IN_KHZ);

  m_vid = (uint32_t) m_vid_l;



  REG_UPDATE(DP_VID_TIMING, DP_VID_M_N_GEN_EN, 0);





  REG_UPDATE(DP_VID_N, DP_VID_N, n_vid);

  REG_UPDATE(DP_VID_M, DP_VID_M, m_vid);

  REG_UPDATE_2(DP_VID_TIMING,
    DP_VID_M_N_GEN_EN, 1,
    DP_VID_N_MUL, n_multiply);
 }



 REG_UPDATE(DIG_FE_CNTL, DIG_START, 1);



 REG_UPDATE(DP_STEER_FIFO, DP_STEER_FIFO_RESET, 0);




 udelay(100);
 REG_UPDATE(DP_VID_STREAM_CNTL, DP_VID_STREAM_ENABLE, 1);
}
