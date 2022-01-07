
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u8 si_get_mclk_frequency_ratio(u32 memory_clock, bool strobe_mode)
{
 u8 mc_para_index;

 if (strobe_mode) {
  if (memory_clock < 12500)
   mc_para_index = 0x00;
  else if (memory_clock > 47500)
   mc_para_index = 0x0f;
  else
   mc_para_index = (u8)((memory_clock - 10000) / 2500);
 } else {
  if (memory_clock < 65000)
   mc_para_index = 0x00;
  else if (memory_clock > 135000)
   mc_para_index = 0x0f;
  else
   mc_para_index = (u8)((memory_clock - 60000) / 5000);
 }
 return mc_para_index;
}
