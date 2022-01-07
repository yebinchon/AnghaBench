
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct audio {int dummy; } ;


 int AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_HBR ;
 int AZ_REG_READ (int ) ;
 int AZ_REG_WRITE (int ,int ) ;
 int HBR_CAPABLE ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void set_high_bit_rate_capable(
 struct audio *audio,
 bool capable)
{
 uint32_t value = 0;


 value = AZ_REG_READ(AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_HBR);

 set_reg_field_value(value, capable,
  AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_HBR,
  HBR_CAPABLE);

 AZ_REG_WRITE(AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_HBR, value);
}
