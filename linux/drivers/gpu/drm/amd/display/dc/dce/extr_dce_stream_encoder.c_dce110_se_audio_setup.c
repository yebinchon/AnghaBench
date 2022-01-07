
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {int dummy; } ;
struct TYPE_4__ {int ALLSPEAKERS; } ;
struct TYPE_5__ {int speaker_flags; TYPE_1__ info; } ;
struct audio_info {TYPE_2__ flags; } ;
struct TYPE_6__ {int all; } ;


 int AFMT_AUDIO_CHANNEL_ENABLE ;
 int AFMT_AUDIO_PACKET_CONTROL2 ;
 int AFMT_AUDIO_SRC_CONTROL ;
 int AFMT_AUDIO_SRC_SELECT ;
 int ASSERT (struct audio_info*) ;
 struct dce110_stream_encoder* DCE110STRENC_FROM_STRENC (struct stream_encoder*) ;
 int REG_SET (int ,int ,int ,unsigned int) ;
 int REG_UPDATE (int ,int ,int ) ;
 TYPE_3__ speakers_to_channels (int ) ;

__attribute__((used)) static void dce110_se_audio_setup(
 struct stream_encoder *enc,
 unsigned int az_inst,
 struct audio_info *audio_info)
{
 struct dce110_stream_encoder *enc110 = DCE110STRENC_FROM_STRENC(enc);

 uint32_t speakers = 0;
 uint32_t channels = 0;

 ASSERT(audio_info);
 if (audio_info == ((void*)0))

  return;

 speakers = audio_info->flags.info.ALLSPEAKERS;
 channels = speakers_to_channels(audio_info->flags.speaker_flags).all;


 REG_SET(AFMT_AUDIO_SRC_CONTROL, 0, AFMT_AUDIO_SRC_SELECT, az_inst);


 REG_UPDATE(AFMT_AUDIO_PACKET_CONTROL2, AFMT_AUDIO_CHANNEL_ENABLE, channels);
}
