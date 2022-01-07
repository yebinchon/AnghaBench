
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;


 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DP_BLANK_MAX_RETRY ;
 int DP_STEER_FIFO ;
 int DP_STEER_FIFO_RESET ;
 int DP_VID_STREAM_CNTL ;
 int DP_VID_STREAM_DIS_DEFER ;
 int DP_VID_STREAM_ENABLE ;
 int DP_VID_STREAM_STATUS ;
 int REG_GET (int ,int ,int*) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WAIT (int ,int ,int ,int,int) ;

void enc1_stream_encoder_dp_blank(
 struct stream_encoder *enc)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);
 uint32_t reg1 = 0;
 uint32_t max_retries = DP_BLANK_MAX_RETRY * 10;
 REG_GET(DP_VID_STREAM_CNTL, DP_VID_STREAM_ENABLE, &reg1);
 if ((reg1 & 0x1) == 0)

  return;



 REG_UPDATE(DP_VID_STREAM_CNTL, DP_VID_STREAM_DIS_DEFER, 2);




 max_retries = DP_BLANK_MAX_RETRY * 250;


 REG_UPDATE(DP_VID_STREAM_CNTL, DP_VID_STREAM_ENABLE, 0);






 REG_WAIT(DP_VID_STREAM_CNTL, DP_VID_STREAM_STATUS,
   0,
   10, max_retries);







 REG_UPDATE(DP_STEER_FIFO, DP_STEER_FIFO_RESET, 1);
}
