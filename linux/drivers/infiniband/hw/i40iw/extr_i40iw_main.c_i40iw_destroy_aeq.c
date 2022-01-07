
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_sc_dev {int hw; TYPE_1__* aeq_ops; } ;
struct i40iw_aeq {int mem; int sc_aeq; } ;
struct i40iw_device {scalar_t__ reset; int iw_msixtbl; int msix_shared; struct i40iw_aeq aeq; struct i40iw_sc_dev sc_dev; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {int (* aeq_destroy_done ) (int *) ;int (* aeq_destroy ) (int *,int ,int) ;} ;


 int I40IW_ERR_NOT_READY ;
 int i40iw_disable_irq (struct i40iw_sc_dev*,int ,void*) ;
 int i40iw_free_dma_mem (int ,int *) ;
 int i40iw_pr_err (char*,int) ;
 int stub1 (int *,int ,int) ;
 int stub2 (int *) ;

__attribute__((used)) static void i40iw_destroy_aeq(struct i40iw_device *iwdev)
{
 enum i40iw_status_code status = I40IW_ERR_NOT_READY;
 struct i40iw_sc_dev *dev = &iwdev->sc_dev;
 struct i40iw_aeq *aeq = &iwdev->aeq;

 if (!iwdev->msix_shared)
  i40iw_disable_irq(dev, iwdev->iw_msixtbl, (void *)iwdev);
 if (iwdev->reset)
  goto exit;

 if (!dev->aeq_ops->aeq_destroy(&aeq->sc_aeq, 0, 1))
  status = dev->aeq_ops->aeq_destroy_done(&aeq->sc_aeq);
 if (status)
  i40iw_pr_err("destroy aeq failed %d\n", status);

exit:
 i40iw_free_dma_mem(dev->hw, &aeq->mem);
}
