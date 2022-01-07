
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_sc_dev {int hw; TYPE_1__* ceq_ops; } ;
struct i40iw_device {scalar_t__ reset; struct i40iw_sc_dev sc_dev; } ;
struct i40iw_ceq {int mem; int sc_ceq; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {int (* ceq_destroy ) (int *,int ,int) ;int (* cceq_destroy_done ) (int *) ;} ;


 int i40iw_free_dma_mem (int ,int *) ;
 int i40iw_pr_err (char*,int) ;
 int stub1 (int *,int ,int) ;
 int stub2 (int *) ;

__attribute__((used)) static void i40iw_destroy_ceq(struct i40iw_device *iwdev,
         struct i40iw_ceq *iwceq)
{
 enum i40iw_status_code status;
 struct i40iw_sc_dev *dev = &iwdev->sc_dev;

 if (iwdev->reset)
  goto exit;

 status = dev->ceq_ops->ceq_destroy(&iwceq->sc_ceq, 0, 1);
 if (status) {
  i40iw_pr_err("ceq destroy command failed %d\n", status);
  goto exit;
 }

 status = dev->ceq_ops->cceq_destroy_done(&iwceq->sc_ceq);
 if (status)
  i40iw_pr_err("ceq destroy completion failed %d\n", status);
exit:
 i40iw_free_dma_mem(dev->hw, &iwceq->mem);
}
