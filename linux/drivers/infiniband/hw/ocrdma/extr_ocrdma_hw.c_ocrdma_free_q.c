
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocrdma_queue_info {int dma; int va; int size; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct ocrdma_dev {TYPE_2__ nic_info; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void ocrdma_free_q(struct ocrdma_dev *dev, struct ocrdma_queue_info *q)
{
 dma_free_coherent(&dev->nic_info.pdev->dev, q->size, q->va, q->dma);
}
