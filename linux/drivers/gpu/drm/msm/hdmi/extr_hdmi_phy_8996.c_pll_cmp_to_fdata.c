
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef scalar_t__ u32 ;


 int HDMI_PLL_CMP_CNT ;
 int do_div (unsigned long,int ) ;

__attribute__((used)) static inline u64 pll_cmp_to_fdata(u32 pll_cmp, unsigned long ref_clk)
{
 u64 fdata = ((u64)pll_cmp) * ref_clk * 10;

 do_div(fdata, HDMI_PLL_CMP_CNT);

 return fdata;
}
