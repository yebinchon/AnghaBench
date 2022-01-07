
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dma_addr; } ;
struct TYPE_6__ {TYPE_2__ continuous; } ;
struct pbl_context {int pbl_buf; int pbl_buf_size_in_bytes; TYPE_3__ phys; scalar_t__ physically_continuous; } ;
struct efa_dev {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kvfree (int ) ;
 int pbl_indirect_terminate (struct efa_dev*,struct pbl_context*) ;

__attribute__((used)) static void pbl_destroy(struct efa_dev *dev, struct pbl_context *pbl)
{
 if (pbl->physically_continuous)
  dma_unmap_single(&dev->pdev->dev, pbl->phys.continuous.dma_addr,
     pbl->pbl_buf_size_in_bytes, DMA_TO_DEVICE);
 else
  pbl_indirect_terminate(dev, pbl);

 kvfree(pbl->pbl_buf);
}
