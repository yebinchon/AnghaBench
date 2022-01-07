
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pll_rate {int num_reg; TYPE_1__* conf; } ;
struct hdmi_pll_8960 {unsigned long pixclk; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int val; int reg; } ;


 int DBG (char*,unsigned long) ;
 struct pll_rate* find_rate (unsigned long) ;
 struct hdmi_pll_8960* hw_clk_to_pll (struct clk_hw*) ;
 int pll_write (struct hdmi_pll_8960*,int ,int ) ;

__attribute__((used)) static int hdmi_pll_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct hdmi_pll_8960 *pll = hw_clk_to_pll(hw);
 const struct pll_rate *pll_rate = find_rate(rate);
 int i;

 DBG("rate=%lu", rate);

 for (i = 0; i < pll_rate->num_reg; i++)
  pll_write(pll, pll_rate->conf[i].reg, pll_rate->conf[i].val);

 pll->pixclk = rate;

 return 0;
}
