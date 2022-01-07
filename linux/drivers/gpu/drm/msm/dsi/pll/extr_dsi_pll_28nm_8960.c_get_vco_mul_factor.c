
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int get_vco_mul_factor(unsigned long byte_clk_rate)
{
 unsigned long bit_mhz;


 bit_mhz = (byte_clk_rate * 8) / 1000000;

 if (bit_mhz < 125)
  return 64;
 else if (bit_mhz < 250)
  return 32;
 else if (bit_mhz < 600)
  return 16;
 else
  return 8;
}
