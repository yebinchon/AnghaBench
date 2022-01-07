
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edp_ctrl {int phy; int power_on; } ;


 int EDP_TRAIN_RECONFIG ;
 int EINVAL ;
 int edp_ctrl_irq_enable (struct edp_ctrl*,int) ;
 int edp_ctrl_link_enable (struct edp_ctrl*,int) ;
 int edp_do_link_train (struct edp_ctrl*) ;
 int msm_edp_phy_ctrl (int ,int) ;
 int usleep_range (int,int) ;
 int wmb () ;

__attribute__((used)) static int edp_ctrl_training(struct edp_ctrl *ctrl)
{
 int ret;


 if (!ctrl->power_on)
  return -EINVAL;

train_start:
 ret = edp_do_link_train(ctrl);
 if (ret == EDP_TRAIN_RECONFIG) {

  edp_ctrl_irq_enable(ctrl, 0);
  edp_ctrl_link_enable(ctrl, 0);
  msm_edp_phy_ctrl(ctrl->phy, 0);


  wmb();
  usleep_range(500, 1000);

  msm_edp_phy_ctrl(ctrl->phy, 1);
  edp_ctrl_link_enable(ctrl, 1);
  edp_ctrl_irq_enable(ctrl, 1);
  goto train_start;
 }

 return ret;
}
