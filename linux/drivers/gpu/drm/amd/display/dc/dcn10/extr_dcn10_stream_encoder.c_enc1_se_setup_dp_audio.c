
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;


 int AFMT_60958_0 ;
 int AFMT_60958_CS_CLOCK_ACCURACY ;
 int AFMT_60958_CS_UPDATE ;
 int AFMT_60958_OSF_OVRD ;
 int AFMT_AUDIO_INFO_UPDATE ;
 int AFMT_AUDIO_LAYOUT_OVRD ;
 int AFMT_AUDIO_PACKET_CONTROL ;
 int AFMT_AUDIO_PACKET_CONTROL2 ;
 int AFMT_INFOFRAME_CONTROL0 ;
 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DP_SEC_AUD_N ;
 int DP_SEC_AUD_N__DP_SEC_AUD_N__DEFAULT ;
 int DP_SEC_TIMESTAMP ;
 int DP_SEC_TIMESTAMP_MODE ;
 int DP_SEC_TIMESTAMP__DP_SEC_TIMESTAMP_MODE__AUTO_CALC ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void enc1_se_setup_dp_audio(
 struct stream_encoder *enc)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);




 REG_SET(DP_SEC_AUD_N, 0,
   DP_SEC_AUD_N, DP_SEC_AUD_N__DP_SEC_AUD_N__DEFAULT);


 REG_SET(DP_SEC_TIMESTAMP, 0, DP_SEC_TIMESTAMP_MODE,
   DP_SEC_TIMESTAMP__DP_SEC_TIMESTAMP_MODE__AUTO_CALC);






 REG_UPDATE(AFMT_AUDIO_PACKET_CONTROL, AFMT_60958_CS_UPDATE, 1);



 REG_UPDATE_2(AFMT_AUDIO_PACKET_CONTROL2,
   AFMT_AUDIO_LAYOUT_OVRD, 0,
   AFMT_60958_OSF_OVRD, 0);


 REG_UPDATE(AFMT_INFOFRAME_CONTROL0, AFMT_AUDIO_INFO_UPDATE, 1);


 REG_UPDATE(AFMT_60958_0, AFMT_60958_CS_CLOCK_ACCURACY, 0);
}
