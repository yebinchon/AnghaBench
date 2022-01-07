
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint8_t tonga_get_ddr3_mclk_frequency_ratio(uint32_t memory_clock)
{
 uint8_t mc_para_index;

 if (memory_clock < 10000)
  mc_para_index = 0;
 else if (memory_clock >= 80000)
  mc_para_index = 0x0f;
 else
  mc_para_index = (uint8_t)((memory_clock - 10000) / 5000 + 1);

 return mc_para_index;
}
