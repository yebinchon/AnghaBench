
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edp_ctrl {int off_work; int workqueue; int on_work; } ;


 int queue_work (int ,int *) ;

void msm_edp_ctrl_power(struct edp_ctrl *ctrl, bool on)
{
 if (on)
  queue_work(ctrl->workqueue, &ctrl->on_work);
 else
  queue_work(ctrl->workqueue, &ctrl->off_work);
}
