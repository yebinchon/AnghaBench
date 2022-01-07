
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_rate {long rate; } ;
struct clk_hw {int dummy; } ;


 struct pll_rate* find_rate (unsigned long) ;

__attribute__((used)) static long hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *parent_rate)
{
 const struct pll_rate *pll_rate = find_rate(rate);

 return pll_rate->rate;
}
