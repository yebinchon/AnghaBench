
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio {int id; int en; } ;
typedef enum sync_source { ____Placeholder_sync_source } sync_source ;
 int SYNC_SOURCE_GSL_IO_GENLOCK_CLOCK ;
 int SYNC_SOURCE_GSL_IO_GENLOCK_VSYNC ;
 int SYNC_SOURCE_GSL_IO_SWAPLOCK_A ;
 int SYNC_SOURCE_GSL_IO_SWAPLOCK_B ;
 int SYNC_SOURCE_IO_GENERIC_A ;
 int SYNC_SOURCE_IO_GENERIC_B ;
 int SYNC_SOURCE_IO_GENERIC_C ;
 int SYNC_SOURCE_IO_GENERIC_D ;
 int SYNC_SOURCE_IO_GENERIC_E ;
 int SYNC_SOURCE_IO_GENERIC_F ;
 int SYNC_SOURCE_IO_HPD1 ;
 int SYNC_SOURCE_IO_HPD2 ;
 int SYNC_SOURCE_IO_HSYNC_A ;
 int SYNC_SOURCE_IO_HSYNC_B ;
 int SYNC_SOURCE_IO_VSYNC_A ;
 int SYNC_SOURCE_IO_VSYNC_B ;
 int SYNC_SOURCE_NONE ;

enum sync_source dal_gpio_get_sync_source(
 const struct gpio *gpio)
{
 switch (gpio->id) {
 case 135:
  switch (gpio->en) {
  case 147:
   return SYNC_SOURCE_IO_GENERIC_A;
  case 146:
   return SYNC_SOURCE_IO_GENERIC_B;
  case 145:
   return SYNC_SOURCE_IO_GENERIC_C;
  case 144:
   return SYNC_SOURCE_IO_GENERIC_D;
  case 143:
   return SYNC_SOURCE_IO_GENERIC_E;
  case 142:
   return SYNC_SOURCE_IO_GENERIC_F;
  default:
   return SYNC_SOURCE_NONE;
  }
 break;
 case 132:
  switch (gpio->en) {
  case 131:
   return SYNC_SOURCE_IO_HSYNC_A;
  case 129:
   return SYNC_SOURCE_IO_VSYNC_A;
  case 130:
   return SYNC_SOURCE_IO_HSYNC_B;
  case 128:
   return SYNC_SOURCE_IO_VSYNC_B;
  default:
   return SYNC_SOURCE_NONE;
  }
 break;
 case 133:
  switch (gpio->en) {
  case 137:
   return SYNC_SOURCE_IO_HPD1;
  case 136:
   return SYNC_SOURCE_IO_HPD2;
  default:
   return SYNC_SOURCE_NONE;
  }
 break;
 case 134:
  switch (gpio->en) {
  case 141:
   return SYNC_SOURCE_GSL_IO_GENLOCK_CLOCK;
  case 140:
   return SYNC_SOURCE_GSL_IO_GENLOCK_VSYNC;
  case 139:
   return SYNC_SOURCE_GSL_IO_SWAPLOCK_A;
  case 138:
   return SYNC_SOURCE_GSL_IO_SWAPLOCK_B;
  default:
   return SYNC_SOURCE_NONE;
  }
 break;
 default:
  return SYNC_SOURCE_NONE;
 }
}
