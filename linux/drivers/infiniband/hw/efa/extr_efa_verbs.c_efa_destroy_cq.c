
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_cq {int device; } ;
struct efa_dev {TYPE_1__* pdev; int ibdev; } ;
struct efa_cq {int size; int dma_addr; int cq_idx; int cpu_addr; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int efa_destroy_cq_idx (struct efa_dev*,int ) ;
 int ibdev_dbg (int *,char*,int ,int ,int ,int *) ;
 struct efa_cq* to_ecq (struct ib_cq*) ;
 struct efa_dev* to_edev (int ) ;

void efa_destroy_cq(struct ib_cq *ibcq, struct ib_udata *udata)
{
 struct efa_dev *dev = to_edev(ibcq->device);
 struct efa_cq *cq = to_ecq(ibcq);

 ibdev_dbg(&dev->ibdev,
    "Destroy cq[%d] virt[0x%p] freed: size[%lu], dma[%pad]\n",
    cq->cq_idx, cq->cpu_addr, cq->size, &cq->dma_addr);

 efa_destroy_cq_idx(dev, cq->cq_idx);
 dma_unmap_single(&dev->pdev->dev, cq->dma_addr, cq->size,
    DMA_FROM_DEVICE);
}
