
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edp_ctrl {int phy; int pixel_rate; int lane_cnt; } ;


 int EDP_CLK_MASK_LINK_CHAN ;
 int edp_clk_disable (struct edp_ctrl*,int ) ;
 int edp_clk_enable (struct edp_ctrl*,int ) ;
 int edp_config_ctrl (struct edp_ctrl*) ;
 int edp_mainlink_ctrl (struct edp_ctrl*,int) ;
 int edp_sw_mvid_nvid (struct edp_ctrl*,int ,int ) ;
 int msm_edp_ctrl_pixel_clock_valid (struct edp_ctrl*,int ,int *,int *) ;
 int msm_edp_phy_lane_power_ctrl (int ,int,int ) ;
 int msm_edp_phy_ready (int ) ;
 int msm_edp_phy_vm_pe_init (int ) ;
 int wmb () ;

__attribute__((used)) static void edp_ctrl_link_enable(struct edp_ctrl *ctrl, int enable)
{
 u32 m, n;

 if (enable) {

  edp_clk_enable(ctrl, EDP_CLK_MASK_LINK_CHAN);

  msm_edp_phy_lane_power_ctrl(ctrl->phy, 1, ctrl->lane_cnt);

  msm_edp_phy_vm_pe_init(ctrl->phy);


  wmb();
  msm_edp_phy_ready(ctrl->phy);

  edp_config_ctrl(ctrl);
  msm_edp_ctrl_pixel_clock_valid(ctrl, ctrl->pixel_rate, &m, &n);
  edp_sw_mvid_nvid(ctrl, m, n);
  edp_mainlink_ctrl(ctrl, 1);
 } else {
  edp_mainlink_ctrl(ctrl, 0);

  msm_edp_phy_lane_power_ctrl(ctrl->phy, 0, 0);
  edp_clk_disable(ctrl, EDP_CLK_MASK_LINK_CHAN);
 }
}
