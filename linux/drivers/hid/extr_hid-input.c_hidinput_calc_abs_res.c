
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_field {int unit_exponent; int logical_maximum; int logical_minimum; int physical_maximum; int physical_minimum; int unit; } ;
typedef int __u16 ;
typedef int __s32 ;
 int DIV_ROUND_CLOSEST (int,int) ;

__s32 hidinput_calc_abs_res(const struct hid_field *field, __u16 code)
{
 __s32 unit_exponent = field->unit_exponent;
 __s32 logical_extents = field->logical_maximum -
     field->logical_minimum;
 __s32 physical_extents = field->physical_maximum -
     field->physical_minimum;
 __s32 prev;


 if (logical_extents <= 0 || physical_extents <= 0)
  return 0;





 switch (code) {
 case 130:
 case 129:
 case 128:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
  if (field->unit == 0x11) {

   unit_exponent += 1;
  } else if (field->unit == 0x13) {

   prev = physical_extents;
   physical_extents *= 254;
   if (physical_extents < prev)
    return 0;
   unit_exponent -= 1;
  } else {
   return 0;
  }
  break;

 case 136:
 case 135:
 case 134:
 case 131:
 case 133:
 case 132:
  if (field->unit == 0x14) {

   prev = logical_extents;
   logical_extents *= 573;
   if (logical_extents < prev)
    return 0;
   unit_exponent += 1;
  } else if (field->unit != 0x12) {
   return 0;
  }
  break;

 default:
  return 0;
 }


 for (; unit_exponent < 0; unit_exponent++) {
  prev = logical_extents;
  logical_extents *= 10;
  if (logical_extents < prev)
   return 0;
 }

 for (; unit_exponent > 0; unit_exponent--) {
  prev = physical_extents;
  physical_extents *= 10;
  if (physical_extents < prev)
   return 0;
 }


 return DIV_ROUND_CLOSEST(logical_extents, physical_extents);
}
