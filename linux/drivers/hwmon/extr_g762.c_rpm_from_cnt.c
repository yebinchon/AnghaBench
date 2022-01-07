
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static inline unsigned int rpm_from_cnt(u8 cnt, u32 clk_freq, u16 p,
     u8 clk_div, u8 gear_mult)
{
 if (cnt == 0xff)
  return 0;

 return (clk_freq * 30 * gear_mult) / ((cnt ? cnt : 1) * p * clk_div);
}
