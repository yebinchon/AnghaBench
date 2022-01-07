
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_sc_dev {int hw; int cqp; TYPE_1__* cqp_ops; } ;
struct i40iw_cqp {int * cqp_requests; int * scratch_array; int sq; } ;
struct i40iw_device {struct i40iw_cqp cqp; struct i40iw_sc_dev sc_dev; } ;
struct TYPE_2__ {int (* cqp_destroy ) (int ) ;} ;


 int i40iw_cleanup_pending_cqp_op (struct i40iw_device*) ;
 int i40iw_free_dma_mem (int ,int *) ;
 int kfree (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void i40iw_destroy_cqp(struct i40iw_device *iwdev, bool free_hwcqp)
{
 struct i40iw_sc_dev *dev = &iwdev->sc_dev;
 struct i40iw_cqp *cqp = &iwdev->cqp;

 if (free_hwcqp)
  dev->cqp_ops->cqp_destroy(dev->cqp);

 i40iw_cleanup_pending_cqp_op(iwdev);

 i40iw_free_dma_mem(dev->hw, &cqp->sq);
 kfree(cqp->scratch_array);
 iwdev->cqp.scratch_array = ((void*)0);

 kfree(cqp->cqp_requests);
 cqp->cqp_requests = ((void*)0);
}
