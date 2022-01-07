
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;


 int HDMI_DEFAULT_REF_CLOCK ;
 scalar_t__ HDMI_DIG_FREQ_BIT_CLK_THRESHOLD ;

__attribute__((used)) static inline u32 pll_get_integloop_gain(u64 frac_start, u64 bclk, u32 ref_clk,
      bool gen_ssc)
{
 int digclk_divsel = bclk >= HDMI_DIG_FREQ_BIT_CLK_THRESHOLD ? 1 : 2;
 u64 base;

 if ((frac_start != 0) || gen_ssc)
  base = (64 * ref_clk) / HDMI_DEFAULT_REF_CLOCK;
 else
  base = (1022 * ref_clk) / 100;

 base <<= digclk_divsel;

 return (base <= 2046 ? base : 2046);
}
