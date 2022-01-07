
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



u8 rv740_get_mclk_frequency_ratio(u32 memory_clock)
{
 u8 mc_para_index;

 if ((memory_clock < 10000) || (memory_clock > 47500))
  mc_para_index = 0x00;
 else
  mc_para_index = (u8)((memory_clock - 10000) / 2500);

 return mc_para_index;
}
