
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct audio {int dummy; } ;


 int AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_CONFIGURATION_DEFAULT ;
 int AZ_REG_READ (int ) ;
 int PORT_CONNECTIVITY ;
 int get_reg_field_value (int,int ,int ) ;

__attribute__((used)) static bool dce_aud_endpoint_valid(struct audio *audio)
{
 uint32_t value;
 uint32_t port_connectivity;

 value = AZ_REG_READ(
   AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_CONFIGURATION_DEFAULT);

 port_connectivity = get_reg_field_value(value,
   AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_CONFIGURATION_DEFAULT,
   PORT_CONNECTIVITY);

 return !(port_connectivity == 1);
}
