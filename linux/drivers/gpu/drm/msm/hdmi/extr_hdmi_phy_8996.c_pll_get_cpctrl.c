
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;



__attribute__((used)) static inline u32 pll_get_cpctrl(u64 frac_start, unsigned long ref_clk,
     bool gen_ssc)
{
 if ((frac_start != 0) || gen_ssc)
  return (11000000 / (ref_clk / 20));

 return 0x23;
}
