
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;


 int dce110_se_enable_audio_clock (struct stream_encoder*,int) ;
 int dce110_se_enable_dp_audio (struct stream_encoder*) ;
 int dce110_se_setup_dp_audio (struct stream_encoder*) ;

void dce110_se_dp_audio_enable(
 struct stream_encoder *enc)
{
 dce110_se_enable_audio_clock(enc, 1);
 dce110_se_setup_dp_audio(enc);
 dce110_se_enable_dp_audio(enc);
}
