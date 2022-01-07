
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {int dummy; } ;


 int AFMT_AUDIO_PACKET_CONTROL ;
 int AFMT_AUDIO_SAMPLE_SEND ;
 struct dce110_stream_encoder* DCE110STRENC_FROM_STRENC (struct stream_encoder*) ;
 int REG_UPDATE (int ,int ,int) ;

void dce110_se_audio_mute_control(
 struct stream_encoder *enc,
 bool mute)
{
 struct dce110_stream_encoder *enc110 = DCE110STRENC_FROM_STRENC(enc);

 REG_UPDATE(AFMT_AUDIO_PACKET_CONTROL, AFMT_AUDIO_SAMPLE_SEND, !mute);
}
