
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;


 int CODE_RATE_1_2 ;
 int CODE_RATE_2_3 ;
 int CODE_RATE_3_4 ;
 int CODE_RATE_5_6 ;
 int CODE_RATE_7_8 ;
 int CODE_RATE_UNKNOWN ;






__attribute__((used)) static uint8_t as102_fe_get_code_rate(enum fe_code_rate arg)
{
 uint8_t c;

 switch (arg) {
 case 132:
  c = CODE_RATE_1_2;
  break;
 case 131:
  c = CODE_RATE_2_3;
  break;
 case 130:
  c = CODE_RATE_3_4;
  break;
 case 129:
  c = CODE_RATE_5_6;
  break;
 case 128:
  c = CODE_RATE_7_8;
  break;
 default:
  c = CODE_RATE_UNKNOWN;
  break;
 }

 return c;
}
