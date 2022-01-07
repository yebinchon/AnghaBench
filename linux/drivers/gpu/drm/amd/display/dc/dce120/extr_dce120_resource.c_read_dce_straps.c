
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct resource_straps {void* dc_pinstraps_audio; void* hdmi_disable; void* audio_stream_number; } ;
struct dc_context {int dummy; } ;


 int AUDIO_STREAM_NUMBER ;
 int CC_DC_MISC_STRAPS ;
 int DC_PINSTRAPS ;
 int DC_PINSTRAPS_AUDIO ;
 int HDMI_DISABLE ;
 int dm_read_reg_soc15 (struct dc_context*,int ,int ) ;
 void* get_reg_field_value (int ,int ,int ) ;
 int mmCC_DC_MISC_STRAPS ;
 int mmDC_PINSTRAPS ;

__attribute__((used)) static void read_dce_straps(
 struct dc_context *ctx,
 struct resource_straps *straps)
{
 uint32_t reg_val = dm_read_reg_soc15(ctx, mmCC_DC_MISC_STRAPS, 0);

 straps->audio_stream_number = get_reg_field_value(reg_val,
         CC_DC_MISC_STRAPS,
         AUDIO_STREAM_NUMBER);
 straps->hdmi_disable = get_reg_field_value(reg_val,
         CC_DC_MISC_STRAPS,
         HDMI_DISABLE);

 reg_val = dm_read_reg_soc15(ctx, mmDC_PINSTRAPS, 0);
 straps->dc_pinstraps_audio = get_reg_field_value(reg_val,
        DC_PINSTRAPS,
        DC_PINSTRAPS_AUDIO);
}
