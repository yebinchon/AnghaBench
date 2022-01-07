
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;


 int AFMT_AUDIO_CLOCK_EN ;
 int AFMT_CNTL ;
 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 scalar_t__ REG (int ) ;
 int REG_UPDATE (int ,int ,int) ;

void enc1_se_enable_audio_clock(
 struct stream_encoder *enc,
 bool enable)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);

 if (REG(AFMT_CNTL) == 0)
  return;

 REG_UPDATE(AFMT_CNTL, AFMT_AUDIO_CLOCK_EN, !!enable);
}
