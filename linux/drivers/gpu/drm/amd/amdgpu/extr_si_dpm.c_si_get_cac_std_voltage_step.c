
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES ;

__attribute__((used)) static u16 si_get_cac_std_voltage_step(u16 max, u16 min)
{
 return ((max - min) + (SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES - 1)) /
  SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES;
}
