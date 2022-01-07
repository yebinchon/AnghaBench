
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edp_ctrl {int phy; int aux; int panel_en_gpio; } ;


 int EDP_CLK_MASK_AUX_CHAN ;
 int edp_clk_disable (struct edp_ctrl*,int ) ;
 int edp_clk_enable (struct edp_ctrl*,int ) ;
 int edp_regulator_disable (struct edp_ctrl*) ;
 int edp_regulator_enable (struct edp_ctrl*) ;
 int gpiod_set_value (int ,int) ;
 int msm_edp_aux_ctrl (int ,int) ;
 int msm_edp_phy_ctrl (int ,int) ;

__attribute__((used)) static void edp_ctrl_phy_aux_enable(struct edp_ctrl *ctrl, int enable)
{
 if (enable) {
  edp_regulator_enable(ctrl);
  edp_clk_enable(ctrl, EDP_CLK_MASK_AUX_CHAN);
  msm_edp_phy_ctrl(ctrl->phy, 1);
  msm_edp_aux_ctrl(ctrl->aux, 1);
  gpiod_set_value(ctrl->panel_en_gpio, 1);
 } else {
  gpiod_set_value(ctrl->panel_en_gpio, 0);
  msm_edp_aux_ctrl(ctrl->aux, 0);
  msm_edp_phy_ctrl(ctrl->phy, 0);
  edp_clk_disable(ctrl, EDP_CLK_MASK_AUX_CHAN);
  edp_regulator_disable(ctrl);
 }
}
