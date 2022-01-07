
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pbl_chunk_list {int size; TYPE_4__* chunks; } ;
struct TYPE_6__ {struct pbl_chunk_list chunk_list; } ;
struct TYPE_7__ {TYPE_2__ indirect; } ;
struct pbl_context {TYPE_3__ phys; } ;
struct efa_dev {TYPE_1__* pdev; } ;
struct TYPE_8__ {struct TYPE_8__* buf; int length; int dma_addr; } ;
struct TYPE_5__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kfree (TYPE_4__*) ;

__attribute__((used)) static void pbl_chunk_list_destroy(struct efa_dev *dev, struct pbl_context *pbl)
{
 struct pbl_chunk_list *chunk_list = &pbl->phys.indirect.chunk_list;
 int i;

 for (i = 0; i < chunk_list->size; i++) {
  dma_unmap_single(&dev->pdev->dev, chunk_list->chunks[i].dma_addr,
     chunk_list->chunks[i].length, DMA_TO_DEVICE);
  kfree(chunk_list->chunks[i].buf);
 }

 kfree(chunk_list->chunks);
}
