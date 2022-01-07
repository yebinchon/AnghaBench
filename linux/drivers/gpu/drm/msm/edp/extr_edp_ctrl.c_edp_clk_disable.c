
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edp_ctrl {int ahb_clk; int aux_clk; int link_clk; int pixel_clk; int mdp_core_clk; } ;


 int EDP_CLK_MASK_AHB ;
 int EDP_CLK_MASK_AUX ;
 int EDP_CLK_MASK_LINK ;
 int EDP_CLK_MASK_MDP_CORE ;
 int EDP_CLK_MASK_PIXEL ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void edp_clk_disable(struct edp_ctrl *ctrl, u32 clk_mask)
{
 if (clk_mask & EDP_CLK_MASK_MDP_CORE)
  clk_disable_unprepare(ctrl->mdp_core_clk);
 if (clk_mask & EDP_CLK_MASK_PIXEL)
  clk_disable_unprepare(ctrl->pixel_clk);
 if (clk_mask & EDP_CLK_MASK_LINK)
  clk_disable_unprepare(ctrl->link_clk);
 if (clk_mask & EDP_CLK_MASK_AUX)
  clk_disable_unprepare(ctrl->aux_clk);
 if (clk_mask & EDP_CLK_MASK_AHB)
  clk_disable_unprepare(ctrl->ahb_clk);
}
