
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_lvds_pll {int dummy; } ;
struct mdp4_kms {int dummy; } ;
struct clk_hw {int dummy; } ;


 int DBG (char*) ;
 int REG_MDP4_LVDS_PHY_CFG0 ;
 int REG_MDP4_LVDS_PHY_PLL_CTRL_0 ;
 struct mdp4_kms* get_kms (struct mdp4_lvds_pll*) ;
 int mdp4_write (struct mdp4_kms*,int ,int) ;
 struct mdp4_lvds_pll* to_mdp4_lvds_pll (struct clk_hw*) ;

__attribute__((used)) static void mpd4_lvds_pll_disable(struct clk_hw *hw)
{
 struct mdp4_lvds_pll *lvds_pll = to_mdp4_lvds_pll(hw);
 struct mdp4_kms *mdp4_kms = get_kms(lvds_pll);

 DBG("");

 mdp4_write(mdp4_kms, REG_MDP4_LVDS_PHY_CFG0, 0x0);
 mdp4_write(mdp4_kms, REG_MDP4_LVDS_PHY_PLL_CTRL_0, 0x0);
}
