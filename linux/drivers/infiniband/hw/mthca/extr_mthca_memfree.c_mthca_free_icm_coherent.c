
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mthca_icm_chunk {int npages; TYPE_2__* mem; } ;
struct mthca_dev {TYPE_1__* pdev; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_4__ {int dev; } ;


 int dma_free_coherent (int *,int ,int ,int ) ;
 int lowmem_page_address (int ) ;
 int sg_dma_address (TYPE_2__*) ;
 int sg_page (TYPE_2__*) ;

__attribute__((used)) static void mthca_free_icm_coherent(struct mthca_dev *dev, struct mthca_icm_chunk *chunk)
{
 int i;

 for (i = 0; i < chunk->npages; ++i) {
  dma_free_coherent(&dev->pdev->dev, chunk->mem[i].length,
      lowmem_page_address(sg_page(&chunk->mem[i])),
      sg_dma_address(&chunk->mem[i]));
 }
}
