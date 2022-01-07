
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;


 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DP_SEC_CNTL ;
 int DP_SEC_GSP0_ENABLE ;
 int DP_SEC_GSP1_ENABLE ;
 int DP_SEC_GSP2_ENABLE ;
 int DP_SEC_GSP3_ENABLE ;
 int DP_SEC_GSP4_ENABLE ;
 int DP_SEC_GSP5_ENABLE ;
 int DP_SEC_GSP6_ENABLE ;
 int DP_SEC_GSP7_ENABLE ;
 int DP_SEC_MPG_ENABLE ;
 int DP_SEC_STREAM_ENABLE ;
 scalar_t__ REG_READ (int ) ;
 int REG_SET_10 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int) ;

void enc1_stream_encoder_stop_dp_info_packets(
 struct stream_encoder *enc)
{

 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);
 uint32_t value = 0;

 REG_SET_10(DP_SEC_CNTL, 0,
  DP_SEC_GSP0_ENABLE, 0,
  DP_SEC_GSP1_ENABLE, 0,
  DP_SEC_GSP2_ENABLE, 0,
  DP_SEC_GSP3_ENABLE, 0,
  DP_SEC_GSP4_ENABLE, 0,
  DP_SEC_GSP5_ENABLE, 0,
  DP_SEC_GSP6_ENABLE, 0,
  DP_SEC_GSP7_ENABLE, 0,
  DP_SEC_MPG_ENABLE, 0,
  DP_SEC_STREAM_ENABLE, 0);




 value = REG_READ(DP_SEC_CNTL);
 if (value)
  REG_UPDATE(DP_SEC_CNTL, DP_SEC_STREAM_ENABLE, 1);

}
