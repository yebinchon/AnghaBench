
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 rv6xx_calculate_spread_spectrum_clk_s(u32 ss_rate, u32 ref_freq)
{
 return (((ref_freq * 10) / (ss_rate * 2)) - 1) / 4;
}
