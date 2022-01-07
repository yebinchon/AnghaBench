
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_audio {int dummy; } ;
struct audio {scalar_t__ inst; } ;


 int AUDIO_RATE_CAPABILITIES ;
 int AZALIA_F0_CODEC_FUNCTION_PARAMETER_POWER_STATES ;
 int AZALIA_F0_CODEC_FUNCTION_PARAMETER_SUPPORTED_SIZE_RATES ;
 int AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL ;
 int AZ_REG_READ (int ) ;
 int AZ_REG_WRITE (int ,int ) ;
 int CLKSTOP ;
 int CLOCK_GATING_DISABLE ;
 struct dce_audio* DCE_AUD (struct audio*) ;
 int EPSS ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int set_reg_field_value (int ,int,int ,int ) ;

void dce_aud_hw_init(
  struct audio *audio)
{
 uint32_t value;
 struct dce_audio *aud = DCE_AUD(audio);



 if (audio->inst != 0)
  return;






 value = AZ_REG_READ(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL);
 set_reg_field_value(value, 1,
   AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
   CLOCK_GATING_DISABLE);
 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, value);
 REG_UPDATE(AZALIA_F0_CODEC_FUNCTION_PARAMETER_SUPPORTED_SIZE_RATES,
   AUDIO_RATE_CAPABILITIES, 0x70);


 REG_UPDATE_2(AZALIA_F0_CODEC_FUNCTION_PARAMETER_POWER_STATES,
   CLKSTOP, 1,
   EPSS, 1);
 set_reg_field_value(value, 0,
   AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
   CLOCK_GATING_DISABLE);
 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, value);
}
