
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int HDMI_PLL_CMP_CNT ;
 int do_div (int,int) ;

__attribute__((used)) static inline u32 pll_get_pll_cmp(u64 fdata, unsigned long ref_clk)
{
 u64 dividend = HDMI_PLL_CMP_CNT * fdata;
 u32 divisor = ref_clk * 10;
 u32 rem;

 rem = do_div(dividend, divisor);
 if (rem > (divisor >> 1))
  dividend++;

 return dividend - 1;
}
