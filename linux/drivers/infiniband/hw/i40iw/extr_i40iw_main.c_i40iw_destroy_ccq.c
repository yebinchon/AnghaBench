
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_sc_dev {int hw; int ccq; TYPE_1__* ccq_ops; } ;
struct i40iw_ccq {int mem_cq; } ;
struct i40iw_device {int reset; struct i40iw_ccq ccq; struct i40iw_sc_dev sc_dev; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {int (* ccq_destroy ) (int ,int ,int) ;} ;


 int i40iw_free_dma_mem (int ,int *) ;
 int i40iw_pr_err (char*,int) ;
 int stub1 (int ,int ,int) ;

__attribute__((used)) static void i40iw_destroy_ccq(struct i40iw_device *iwdev)
{
 struct i40iw_sc_dev *dev = &iwdev->sc_dev;
 struct i40iw_ccq *ccq = &iwdev->ccq;
 enum i40iw_status_code status = 0;

 if (!iwdev->reset)
  status = dev->ccq_ops->ccq_destroy(dev->ccq, 0, 1);
 if (status)
  i40iw_pr_err("ccq destroy failed %d\n", status);
 i40iw_free_dma_mem(dev->hw, &ccq->mem_cq);
}
