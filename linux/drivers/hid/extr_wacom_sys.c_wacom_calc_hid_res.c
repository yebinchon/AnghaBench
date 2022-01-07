
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_field {int logical_maximum; int physical_maximum; unsigned int unit; int unit_exponent; } ;


 int ABS_X ;
 int hidinput_calc_abs_res (struct hid_field*,int ) ;

__attribute__((used)) static int wacom_calc_hid_res(int logical_extents, int physical_extents,
          unsigned unit, int exponent)
{
 struct hid_field field = {
  .logical_maximum = logical_extents,
  .physical_maximum = physical_extents,
  .unit = unit,
  .unit_exponent = exponent,
 };

 return hidinput_calc_abs_res(&field, ABS_X);
}
