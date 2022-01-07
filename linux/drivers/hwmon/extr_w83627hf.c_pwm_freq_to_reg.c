
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 pwm_freq_to_reg(unsigned long val)
{

 if (val >= 93750)
  return 0x01;
 if (val >= 720)
  return 24000000UL / (val << 8);
 if (val < 6)
  return 0xFF;
 else
  return 0x80 | (180000UL / (val << 8));
}
