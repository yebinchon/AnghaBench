
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



u8 si_get_ddr3_mclk_frequency_ratio(u32 memory_clock)
{
 u8 mc_para_index;

 if (memory_clock < 10000)
  mc_para_index = 0;
 else if (memory_clock >= 80000)
  mc_para_index = 0x0f;
 else
  mc_para_index = (u8)((memory_clock - 10000) / 5000 + 1);
 return mc_para_index;
}
