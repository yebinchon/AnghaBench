
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline unsigned long pwm_freq_from_reg(u8 reg)
{
 unsigned long clock = (reg & 0x80) ? 48000000UL : 1000000UL;

 reg &= 0x7f;
 if (reg == 0)
  reg++;
 return clock / (reg << 8);
}
