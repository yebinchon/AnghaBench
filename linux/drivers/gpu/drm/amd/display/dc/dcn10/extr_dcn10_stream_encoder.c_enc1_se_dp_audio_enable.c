
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;


 int enc1_se_enable_audio_clock (struct stream_encoder*,int) ;
 int enc1_se_enable_dp_audio (struct stream_encoder*) ;
 int enc1_se_setup_dp_audio (struct stream_encoder*) ;

void enc1_se_dp_audio_enable(
 struct stream_encoder *enc)
{
 enc1_se_enable_audio_clock(enc, 1);
 enc1_se_setup_dp_audio(enc);
 enc1_se_enable_dp_audio(enc);
}
