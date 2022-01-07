
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct pp_hwmgr {int dummy; } ;



__attribute__((used)) static uint32_t smu8_convert_8Bit_index_to_voltage(
   struct pp_hwmgr *hwmgr, uint16_t voltage)
{
 return 6200 - (voltage * 25);
}
