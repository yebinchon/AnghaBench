
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u16 ;


 size_t ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* mode_to_update_interval ;

__attribute__((used)) static u8 get_mode_from_update_interval(u16 value)
{
 size_t index;
 u8 number_of_modes = ARRAY_SIZE(mode_to_update_interval);

 if (value == 0)
  return 0;


 for (index = 1; index < number_of_modes; index++) {
  if (mode_to_update_interval[index] <= value)
   return index;
 }

 return number_of_modes - 1;
}
