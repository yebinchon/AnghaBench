
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rdma_srq_producers {int dummy; } ;
struct qedr_srq_hwq_info {int phy_prod_pair_addr; int virt_prod_pair_addr; int pbl; } ;
struct qedr_srq {struct qedr_dev* dev; struct qedr_srq_hwq_info hw_srq; } ;
struct qedr_dev {TYPE_1__* pdev; int cdev; TYPE_3__* ops; } ;
struct TYPE_6__ {TYPE_2__* common; } ;
struct TYPE_5__ {int (* chain_free ) (int ,int *) ;} ;
struct TYPE_4__ {int dev; } ;


 int dma_free_coherent (int *,int,int ,int ) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void qedr_free_srq_kernel_params(struct qedr_srq *srq)
{
 struct qedr_srq_hwq_info *hw_srq = &srq->hw_srq;
 struct qedr_dev *dev = srq->dev;

 dev->ops->common->chain_free(dev->cdev, &hw_srq->pbl);

 dma_free_coherent(&dev->pdev->dev, sizeof(struct rdma_srq_producers),
     hw_srq->virt_prod_pair_addr,
     hw_srq->phy_prod_pair_addr);
}
