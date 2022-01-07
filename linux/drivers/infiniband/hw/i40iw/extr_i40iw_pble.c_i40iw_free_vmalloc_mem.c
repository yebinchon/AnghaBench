
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct i40iw_hw {scalar_t__ dev_context; } ;
struct i40iw_chunk {int pg_cnt; scalar_t__ type; int * vaddr; int * dmaaddrs; } ;


 int DMA_BIDIRECTIONAL ;
 int PAGE_SIZE ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int kfree (int *) ;
 int vfree (int *) ;

__attribute__((used)) static void i40iw_free_vmalloc_mem(struct i40iw_hw *hw, struct i40iw_chunk *chunk)
{
 struct pci_dev *pcidev = (struct pci_dev *)hw->dev_context;
 int i;

 if (!chunk->pg_cnt)
  goto done;
 for (i = 0; i < chunk->pg_cnt; i++)
  dma_unmap_page(&pcidev->dev, chunk->dmaaddrs[i], PAGE_SIZE, DMA_BIDIRECTIONAL);

 done:
 kfree(chunk->dmaaddrs);
 chunk->dmaaddrs = ((void*)0);
 vfree(chunk->vaddr);
 chunk->vaddr = ((void*)0);
 chunk->type = 0;
}
