
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_straps {int dc_pinstraps_audio; int audio_stream_number; int hdmi_disable; } ;
struct dc_context {int dummy; } ;


 int AUDIO_STREAM_NUMBER ;
 int CC_DC_HDMI_STRAPS ;
 int DC_PINSTRAPS ;
 int DC_PINSTRAPS_AUDIO ;
 int HDMI_DISABLE ;
 int REG_GET (int ,int ,int *) ;
 int REG_GET_2 (int ,int ,int *,int ,int *) ;

__attribute__((used)) static void read_dce_straps(
 struct dc_context *ctx,
 struct resource_straps *straps)
{
 REG_GET_2(CC_DC_HDMI_STRAPS,
   HDMI_DISABLE, &straps->hdmi_disable,
   AUDIO_STREAM_NUMBER, &straps->audio_stream_number);

 REG_GET(DC_PINSTRAPS, DC_PINSTRAPS_AUDIO, &straps->dc_pinstraps_audio);
}
