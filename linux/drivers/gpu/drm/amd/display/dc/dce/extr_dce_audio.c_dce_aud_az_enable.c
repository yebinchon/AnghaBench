
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct audio {int inst; } ;


 int AUDIO_ENABLED ;
 int AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL ;
 int AZ_REG_READ (int ) ;
 int AZ_REG_WRITE (int ,int ) ;
 int CLOCK_GATING_DISABLE ;
 int DC_LOGGER_INIT () ;
 int DC_LOG_HW_AUDIO (char*,int ,int ) ;
 int set_reg_field_value (int ,int,int ,int ) ;

void dce_aud_az_enable(struct audio *audio)
{
 uint32_t value = AZ_REG_READ(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL);
 DC_LOGGER_INIT();

 set_reg_field_value(value, 1,
       AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
       CLOCK_GATING_DISABLE);
 set_reg_field_value(value, 1,
       AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
       AUDIO_ENABLED);

 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, value);
 set_reg_field_value(value, 0,
   AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
   CLOCK_GATING_DISABLE);
 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, value);

 DC_LOG_HW_AUDIO("\n\t========= AUDIO:dce_aud_az_enable: index: %u  data: 0x%x\n",
   audio->inst, value);
}
