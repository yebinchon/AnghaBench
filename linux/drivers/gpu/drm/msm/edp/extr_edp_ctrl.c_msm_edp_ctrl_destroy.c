
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edp_ctrl {int dev_mutex; int * edid; int * aux; TYPE_1__* pdev; int * workqueue; } ;
struct TYPE_2__ {int dev; } ;


 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;
 int kfree (int *) ;
 int msm_edp_aux_destroy (int *,int *) ;
 int mutex_destroy (int *) ;

void msm_edp_ctrl_destroy(struct edp_ctrl *ctrl)
{
 if (!ctrl)
  return;

 if (ctrl->workqueue) {
  flush_workqueue(ctrl->workqueue);
  destroy_workqueue(ctrl->workqueue);
  ctrl->workqueue = ((void*)0);
 }

 if (ctrl->aux) {
  msm_edp_aux_destroy(&ctrl->pdev->dev, ctrl->aux);
  ctrl->aux = ((void*)0);
 }

 kfree(ctrl->edid);
 ctrl->edid = ((void*)0);

 mutex_destroy(&ctrl->dev_mutex);
}
