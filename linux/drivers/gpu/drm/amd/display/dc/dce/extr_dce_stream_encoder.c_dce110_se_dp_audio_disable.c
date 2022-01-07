
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;


 int dce110_se_disable_dp_audio (struct stream_encoder*) ;
 int dce110_se_enable_audio_clock (struct stream_encoder*,int) ;

void dce110_se_dp_audio_disable(
 struct stream_encoder *enc)
{
 dce110_se_disable_dp_audio(enc);
 dce110_se_enable_audio_clock(enc, 0);
}
