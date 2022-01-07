
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint8_t fiji_get_mclk_frequency_ratio(uint32_t mem_clock)
{
 if (mem_clock <= 10000)
  return 0x0;
 if (mem_clock <= 15000)
  return 0x1;
 if (mem_clock <= 20000)
  return 0x2;
 if (mem_clock <= 25000)
  return 0x3;
 if (mem_clock <= 30000)
  return 0x4;
 if (mem_clock <= 35000)
  return 0x5;
 if (mem_clock <= 40000)
  return 0x6;
 if (mem_clock <= 45000)
  return 0x7;
 if (mem_clock <= 50000)
  return 0x8;
 if (mem_clock <= 55000)
  return 0x9;
 if (mem_clock <= 60000)
  return 0xa;
 if (mem_clock <= 65000)
  return 0xb;
 if (mem_clock <= 70000)
  return 0xc;
 if (mem_clock <= 75000)
  return 0xd;
 if (mem_clock <= 80000)
  return 0xe;

 return 0xf;
}
