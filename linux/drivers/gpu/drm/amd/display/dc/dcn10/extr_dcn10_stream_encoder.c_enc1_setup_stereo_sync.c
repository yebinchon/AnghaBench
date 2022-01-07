
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;


 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DIG_FE_CNTL ;
 int DIG_STEREOSYNC_GATE_EN ;
 int DIG_STEREOSYNC_SELECT ;
 int REG_UPDATE (int ,int ,int) ;

void enc1_setup_stereo_sync(
 struct stream_encoder *enc,
 int tg_inst, bool enable)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);
 REG_UPDATE(DIG_FE_CNTL, DIG_STEREOSYNC_SELECT, tg_inst);
 REG_UPDATE(DIG_FE_CNTL, DIG_STEREOSYNC_GATE_EN, !enable);
}
