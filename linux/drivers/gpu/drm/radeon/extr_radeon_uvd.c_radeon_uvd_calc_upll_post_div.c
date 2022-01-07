
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned radeon_uvd_calc_upll_post_div(unsigned vco_freq,
           unsigned target_freq,
           unsigned pd_min,
           unsigned pd_even)
{
 unsigned post_div = vco_freq / target_freq;


 if (post_div < pd_min)
  post_div = pd_min;


 if ((vco_freq / post_div) > target_freq)
  post_div += 1;


 if (post_div > pd_even && post_div % 2)
  post_div += 1;

 return post_div;
}
