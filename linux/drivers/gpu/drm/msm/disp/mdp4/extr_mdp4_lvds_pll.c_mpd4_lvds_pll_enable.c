
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pll_rate {TYPE_1__* conf; int rate; } ;
struct mdp4_lvds_pll {int pixclk; } ;
struct mdp4_kms {int dummy; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int val; scalar_t__ reg; } ;


 int DBG (char*,int ,int ) ;
 int EINVAL ;
 scalar_t__ REG_MDP4_LCDC_LVDS_PHY_RESET ;
 scalar_t__ REG_MDP4_LVDS_PHY_PLL_CTRL_0 ;
 int REG_MDP4_LVDS_PHY_PLL_LOCKED ;
 scalar_t__ WARN_ON (int) ;
 int cpu_relax () ;
 struct pll_rate* find_rate (int ) ;
 struct mdp4_kms* get_kms (struct mdp4_lvds_pll*) ;
 int mdp4_read (struct mdp4_kms*,int ) ;
 int mdp4_write (struct mdp4_kms*,scalar_t__,int) ;
 struct mdp4_lvds_pll* to_mdp4_lvds_pll (struct clk_hw*) ;

__attribute__((used)) static int mpd4_lvds_pll_enable(struct clk_hw *hw)
{
 struct mdp4_lvds_pll *lvds_pll = to_mdp4_lvds_pll(hw);
 struct mdp4_kms *mdp4_kms = get_kms(lvds_pll);
 const struct pll_rate *pll_rate = find_rate(lvds_pll->pixclk);
 int i;

 DBG("pixclk=%lu (%lu)", lvds_pll->pixclk, pll_rate->rate);

 if (WARN_ON(!pll_rate))
  return -EINVAL;

 mdp4_write(mdp4_kms, REG_MDP4_LCDC_LVDS_PHY_RESET, 0x33);

 for (i = 0; pll_rate->conf[i].reg; i++)
  mdp4_write(mdp4_kms, pll_rate->conf[i].reg, pll_rate->conf[i].val);

 mdp4_write(mdp4_kms, REG_MDP4_LVDS_PHY_PLL_CTRL_0, 0x01);


 while (!mdp4_read(mdp4_kms, REG_MDP4_LVDS_PHY_PLL_LOCKED))
  cpu_relax();

 return 0;
}
