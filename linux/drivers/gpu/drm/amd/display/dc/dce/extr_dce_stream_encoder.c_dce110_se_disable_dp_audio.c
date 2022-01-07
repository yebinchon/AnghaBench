
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {int dummy; } ;


 struct dce110_stream_encoder* DCE110STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DP_SEC_ACM_ENABLE ;
 int DP_SEC_AIP_ENABLE ;
 int DP_SEC_ASP_ENABLE ;
 int DP_SEC_ATP_ENABLE ;
 int DP_SEC_CNTL ;
 int DP_SEC_STREAM_ENABLE ;
 scalar_t__ REG_READ (int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_5 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dce110_se_disable_dp_audio(
 struct stream_encoder *enc)
{
 struct dce110_stream_encoder *enc110 = DCE110STRENC_FROM_STRENC(enc);
 uint32_t value = 0;


 REG_UPDATE_5(DP_SEC_CNTL,
   DP_SEC_ASP_ENABLE, 0,
   DP_SEC_ATP_ENABLE, 0,
   DP_SEC_AIP_ENABLE, 0,
   DP_SEC_ACM_ENABLE, 0,
   DP_SEC_STREAM_ENABLE, 0);



 value = REG_READ(DP_SEC_CNTL);
 if (value != 0)
  REG_UPDATE(DP_SEC_CNTL, DP_SEC_STREAM_ENABLE, 1);

}
