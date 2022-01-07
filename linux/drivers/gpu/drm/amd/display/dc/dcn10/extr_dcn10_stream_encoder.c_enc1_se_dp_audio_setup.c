
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct audio_info {int dummy; } ;


 int enc1_se_audio_setup (struct stream_encoder*,unsigned int,struct audio_info*) ;

void enc1_se_dp_audio_setup(
 struct stream_encoder *enc,
 unsigned int az_inst,
 struct audio_info *info)
{
 enc1_se_audio_setup(enc, az_inst, info);
}
