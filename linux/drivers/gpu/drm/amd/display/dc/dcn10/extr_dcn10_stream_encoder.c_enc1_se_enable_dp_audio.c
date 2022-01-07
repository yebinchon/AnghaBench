
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;


 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DP_SEC_AIP_ENABLE ;
 int DP_SEC_ASP_ENABLE ;
 int DP_SEC_ATP_ENABLE ;
 int DP_SEC_CNTL ;
 int DP_SEC_STREAM_ENABLE ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;

void enc1_se_enable_dp_audio(
 struct stream_encoder *enc)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);


 REG_UPDATE(DP_SEC_CNTL, DP_SEC_ASP_ENABLE, 1);


 REG_UPDATE_2(DP_SEC_CNTL,
   DP_SEC_ATP_ENABLE, 1,
   DP_SEC_AIP_ENABLE, 1);


 REG_UPDATE(DP_SEC_CNTL, DP_SEC_STREAM_ENABLE, 1);
}
