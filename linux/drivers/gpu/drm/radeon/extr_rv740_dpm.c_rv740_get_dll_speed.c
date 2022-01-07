
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ max; scalar_t__ min; int dll_speed; } ;


 int DRM_DEBUG_KMS (char*) ;
 TYPE_1__* dll_speed_table ;

u32 rv740_get_dll_speed(bool is_gddr5, u32 memory_clock)
{
 int i;
 u32 factor;
 u16 data_rate;

 if (is_gddr5)
  factor = 4;
 else
  factor = 2;

 data_rate = (u16)(memory_clock * factor / 1000);

 if (data_rate < dll_speed_table[0].max) {
  for (i = 0; i < 16; i++) {
   if (data_rate > dll_speed_table[i].min &&
       data_rate <= dll_speed_table[i].max)
    return dll_speed_table[i].dll_speed;
  }
 }

 DRM_DEBUG_KMS("Target MCLK greater than largest MCLK in DLL speed table\n");

 return 0x0f;
}
