
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned long HDMI_PCLK_MAX_FREQ ;
 unsigned long HDMI_PCLK_MIN_FREQ ;

__attribute__((used)) static long hdmi_8996_pll_round_rate(struct clk_hw *hw,
         unsigned long rate,
         unsigned long *parent_rate)
{
 if (rate < HDMI_PCLK_MIN_FREQ)
  return HDMI_PCLK_MIN_FREQ;
 else if (rate > HDMI_PCLK_MAX_FREQ)
  return HDMI_PCLK_MAX_FREQ;
 else
  return rate;
}
