
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ASICREV_IS_DALI (int ) ;

unsigned int get_highest_allowed_voltage_level(uint32_t hw_internal_rev)
{

 if (ASICREV_IS_DALI(hw_internal_rev))
  return 0;


 return 4;
}
