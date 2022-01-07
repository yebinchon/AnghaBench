
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct t3_cqe {int dummy; } ;
struct t3_cq {unsigned long size_log2; scalar_t__ dma_addr; scalar_t__ cqid; int sw_queue; int queue; } ;
struct rdma_cq_setup {unsigned long size; int credits; int credit_thres; int ovfl_mode; scalar_t__ base_addr; scalar_t__ id; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct cxio_rdev {TYPE_3__* t3cdev_p; TYPE_2__ rnic_info; int rscp; } ;
struct TYPE_6__ {scalar_t__ type; int (* ctl ) (TYPE_3__*,int ,struct rdma_cq_setup*) ;} ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RDMA_CQ_SETUP ;
 scalar_t__ T3A ;
 scalar_t__ cxio_hal_get_cqid (int ) ;
 int dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int dma_unmap_addr_set (struct t3_cq*,int ,scalar_t__) ;
 int kfree (int ) ;
 int kzalloc (int,int ) ;
 int mapping ;
 int stub1 (TYPE_3__*,int ,struct rdma_cq_setup*) ;

int cxio_create_cq(struct cxio_rdev *rdev_p, struct t3_cq *cq, int kernel)
{
 struct rdma_cq_setup setup;
 int size = (1UL << (cq->size_log2)) * sizeof(struct t3_cqe);

 size += 1;
 cq->cqid = cxio_hal_get_cqid(rdev_p->rscp);
 if (!cq->cqid)
  return -ENOMEM;
 if (kernel) {
  cq->sw_queue = kzalloc(size, GFP_KERNEL);
  if (!cq->sw_queue)
   return -ENOMEM;
 }
 cq->queue = dma_alloc_coherent(&(rdev_p->rnic_info.pdev->dev), size,
          &(cq->dma_addr), GFP_KERNEL);
 if (!cq->queue) {
  kfree(cq->sw_queue);
  return -ENOMEM;
 }
 dma_unmap_addr_set(cq, mapping, cq->dma_addr);
 setup.id = cq->cqid;
 setup.base_addr = (u64) (cq->dma_addr);
 setup.size = 1UL << cq->size_log2;
 setup.credits = 65535;
 setup.credit_thres = 1;
 if (rdev_p->t3cdev_p->type != T3A)
  setup.ovfl_mode = 0;
 else
  setup.ovfl_mode = 1;
 return (rdev_p->t3cdev_p->ctl(rdev_p->t3cdev_p, RDMA_CQ_SETUP, &setup));
}
