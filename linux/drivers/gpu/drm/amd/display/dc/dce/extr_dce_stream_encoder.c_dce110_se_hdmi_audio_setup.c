
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct audio_info {int dummy; } ;
struct audio_crtc_info {int dummy; } ;


 int dce110_se_audio_setup (struct stream_encoder*,unsigned int,struct audio_info*) ;
 int dce110_se_enable_audio_clock (struct stream_encoder*,int) ;
 int dce110_se_setup_hdmi_audio (struct stream_encoder*,struct audio_crtc_info*) ;

void dce110_se_hdmi_audio_setup(
 struct stream_encoder *enc,
 unsigned int az_inst,
 struct audio_info *info,
 struct audio_crtc_info *audio_crtc_info)
{
 dce110_se_enable_audio_clock(enc, 1);
 dce110_se_setup_hdmi_audio(enc, audio_crtc_info);
 dce110_se_audio_setup(enc, az_inst, info);
}
