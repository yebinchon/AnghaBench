
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct audio {int dummy; } ;


 int AUDIO_LIPSYNC ;
 int AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_LIPSYNC ;
 int AZ_REG_READ (int ) ;
 int AZ_REG_WRITE (int ,int ) ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void set_audio_latency(
 struct audio *audio,
 int latency_in_ms)
{
 uint32_t value = 0;

 if (latency_in_ms < 0)
  latency_in_ms = 0;

 if (latency_in_ms > 255)
  latency_in_ms = 255;

 value = AZ_REG_READ(AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_LIPSYNC);

 set_reg_field_value(value, latency_in_ms,
  AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_LIPSYNC,
  AUDIO_LIPSYNC);

 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_LIPSYNC,
  value);
}
