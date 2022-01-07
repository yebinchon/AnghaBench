
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;


 int BREAK_TO_DEBUGGER () ;
 int GPIO_DDC_LINE_DDC1 ;
 int GPIO_DDC_LINE_DDC2 ;
 int GPIO_DDC_LINE_DDC3 ;
 int GPIO_DDC_LINE_DDC4 ;
 int GPIO_DDC_LINE_DDC5 ;
 int GPIO_DDC_LINE_DDC6 ;
 int GPIO_DDC_LINE_DDC_VGA ;
 int GPIO_DDC_LINE_I2C_PAD ;
 int GPIO_GENERIC_A ;
 int GPIO_GENERIC_B ;
 int GPIO_GENERIC_C ;
 int GPIO_GENERIC_D ;
 int GPIO_GENERIC_E ;
 int GPIO_GENERIC_F ;
 int GPIO_GENERIC_G ;
 int GPIO_GPIO_PAD_MAX ;
 int GPIO_GSL_GENLOCK_CLOCK ;
 int GPIO_GSL_GENLOCK_VSYNC ;
 int GPIO_GSL_SWAPLOCK_A ;
 int GPIO_GSL_SWAPLOCK_B ;
 int GPIO_HPD_1 ;
 int GPIO_HPD_2 ;
 int GPIO_HPD_3 ;
 int GPIO_HPD_4 ;
 int GPIO_HPD_5 ;
 int GPIO_HPD_6 ;
 int GPIO_ID_GENERIC ;
 int GPIO_ID_GPIO_PAD ;
 int GPIO_ID_GSL ;
 int GPIO_ID_HPD ;
 int GPIO_ID_SYNC ;
 int GPIO_SYNC_HSYNC_A ;
 int GPIO_SYNC_VSYNC_A ;
 int index_from_vector (int) ;
__attribute__((used)) static bool offset_to_id(
 uint32_t offset,
 uint32_t mask,
 enum gpio_id *id,
 uint32_t *en)
{
 switch (offset) {

 case 136:
  *id = GPIO_ID_GENERIC;
  switch (mask) {
  case 163:
   *en = GPIO_GENERIC_A;
   return 1;
  case 162:
   *en = GPIO_GENERIC_B;
   return 1;
  case 161:
   *en = GPIO_GENERIC_C;
   return 1;
  case 160:
   *en = GPIO_GENERIC_D;
   return 1;
  case 159:
   *en = GPIO_GENERIC_E;
   return 1;
  case 158:
   *en = GPIO_GENERIC_F;
   return 1;
  case 157:
   *en = GPIO_GENERIC_G;
   return 1;
  default:
   BREAK_TO_DEBUGGER();
   return 0;
  }
 break;

 case 134:
  *id = GPIO_ID_HPD;
  switch (mask) {
  case 152:
   *en = GPIO_HPD_1;
   return 1;
  case 151:
   *en = GPIO_HPD_2;
   return 1;
  case 150:
   *en = GPIO_HPD_3;
   return 1;
  case 149:
   *en = GPIO_HPD_4;
   return 1;
  case 148:
   *en = GPIO_HPD_5;
   return 1;
  case 147:
   *en = GPIO_HPD_6;
   return 1;
  default:
   BREAK_TO_DEBUGGER();
   return 0;
  }
 break;

 case 129:
  *id = GPIO_ID_SYNC;
  switch (mask) {
  case 146:
   *en = GPIO_SYNC_HSYNC_A;
   return 1;
  case 145:
   *en = GPIO_SYNC_VSYNC_A;
   return 1;
  default:
   BREAK_TO_DEBUGGER();
   return 0;
  }
 break;

 case 135:
  *id = GPIO_ID_GSL;
  switch (mask) {
  case 156:
   *en = GPIO_GSL_GENLOCK_CLOCK;
   return 1;
  case 155:
   *en = GPIO_GSL_GENLOCK_VSYNC;
   return 1;
  case 154:
   *en = GPIO_GSL_SWAPLOCK_A;
   return 1;
  case 153:
   *en = GPIO_GSL_SWAPLOCK_B;
   return 1;
  default:
   BREAK_TO_DEBUGGER();
   return 0;
  }
 break;

 case 128:
  *id = GPIO_ID_GPIO_PAD;
  *en = index_from_vector(mask);
  return (*en <= GPIO_GPIO_PAD_MAX);




 case 144:
  *en = GPIO_DDC_LINE_DDC1;
  return 1;
 case 143:
  *en = GPIO_DDC_LINE_DDC2;
  return 1;
 case 142:
  *en = GPIO_DDC_LINE_DDC3;
  return 1;
 case 141:
  *en = GPIO_DDC_LINE_DDC4;
  return 1;
 case 140:
  *en = GPIO_DDC_LINE_DDC5;
  return 1;
 case 139:
  *en = GPIO_DDC_LINE_DDC6;
  return 1;
 case 138:
  *en = GPIO_DDC_LINE_DDC_VGA;
  return 1;

 case 133:
  *en = GPIO_DDC_LINE_I2C_PAD;
  return 1;

 case 130:
 case 132:
 case 131:
 case 137:
  return 0;

 default:
  BREAK_TO_DEBUGGER();
  return 0;
 }
}
