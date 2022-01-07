
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sgl; int pbl_buf_size_in_pages; } ;
struct TYPE_6__ {TYPE_2__ indirect; } ;
struct pbl_context {TYPE_3__ phys; } ;
struct efa_dev {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_sg (int *,int ,int ,int ) ;
 int kfree (int ) ;
 int pbl_chunk_list_destroy (struct efa_dev*,struct pbl_context*) ;

__attribute__((used)) static void pbl_indirect_terminate(struct efa_dev *dev, struct pbl_context *pbl)
{
 pbl_chunk_list_destroy(dev, pbl);
 dma_unmap_sg(&dev->pdev->dev, pbl->phys.indirect.sgl,
       pbl->phys.indirect.pbl_buf_size_in_pages, DMA_TO_DEVICE);
 kfree(pbl->phys.indirect.sgl);
}
