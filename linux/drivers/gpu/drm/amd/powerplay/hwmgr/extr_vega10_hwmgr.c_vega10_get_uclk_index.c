
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ uint32_t ;
struct pp_hwmgr {int dummy; } ;
struct phm_ppt_v1_clock_voltage_dependency_table {scalar_t__ count; TYPE_1__* entries; } ;
struct TYPE_2__ {scalar_t__ clk; } ;



__attribute__((used)) static uint8_t vega10_get_uclk_index(struct pp_hwmgr *hwmgr,
   struct phm_ppt_v1_clock_voltage_dependency_table *mclk_table,
      uint32_t frequency)
{
 uint8_t count;
 uint8_t i;

 if (mclk_table == ((void*)0) || mclk_table->count == 0)
  return 0;

 count = (uint8_t)(mclk_table->count);

 for(i = 0; i < count; i++) {
  if(mclk_table->entries[i].clk >= frequency)
   return i;
 }

 return i-1;
}
