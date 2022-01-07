
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_icm_chunk {size_t npages; scalar_t__ nsg; int * mem; int list; } ;
struct mthca_icm {int chunk_list; scalar_t__ refcount; } ;
struct mthca_dev {TYPE_1__* pdev; } ;
typedef int gfp_t ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 int MTHCA_ICM_ALLOC_SIZE ;
 size_t MTHCA_ICM_CHUNK_LEN ;
 int PCI_DMA_BIDIRECTIONAL ;
 int __GFP_HIGHMEM ;
 int __GFP_NOWARN ;
 int get_order (int ) ;
 void* kmalloc (int,int) ;
 int list_add_tail (int *,int *) ;
 int mthca_alloc_icm_coherent (int *,int *,int,int) ;
 int mthca_alloc_icm_pages (int *,int,int) ;
 int mthca_free_icm (struct mthca_dev*,struct mthca_icm*,int) ;
 void* pci_map_sg (TYPE_1__*,int *,size_t,int ) ;
 int sg_init_table (int *,size_t) ;

struct mthca_icm *mthca_alloc_icm(struct mthca_dev *dev, int npages,
      gfp_t gfp_mask, int coherent)
{
 struct mthca_icm *icm;
 struct mthca_icm_chunk *chunk = ((void*)0);
 int cur_order;
 int ret;


 BUG_ON(coherent && (gfp_mask & __GFP_HIGHMEM));

 icm = kmalloc(sizeof *icm, gfp_mask & ~(__GFP_HIGHMEM | __GFP_NOWARN));
 if (!icm)
  return icm;

 icm->refcount = 0;
 INIT_LIST_HEAD(&icm->chunk_list);

 cur_order = get_order(MTHCA_ICM_ALLOC_SIZE);

 while (npages > 0) {
  if (!chunk) {
   chunk = kmalloc(sizeof *chunk,
     gfp_mask & ~(__GFP_HIGHMEM | __GFP_NOWARN));
   if (!chunk)
    goto fail;

   sg_init_table(chunk->mem, MTHCA_ICM_CHUNK_LEN);
   chunk->npages = 0;
   chunk->nsg = 0;
   list_add_tail(&chunk->list, &icm->chunk_list);
  }

  while (1 << cur_order > npages)
   --cur_order;

  if (coherent)
   ret = mthca_alloc_icm_coherent(&dev->pdev->dev,
             &chunk->mem[chunk->npages],
             cur_order, gfp_mask);
  else
   ret = mthca_alloc_icm_pages(&chunk->mem[chunk->npages],
          cur_order, gfp_mask);

  if (!ret) {
   ++chunk->npages;

   if (coherent)
    ++chunk->nsg;
   else if (chunk->npages == MTHCA_ICM_CHUNK_LEN) {
    chunk->nsg = pci_map_sg(dev->pdev, chunk->mem,
       chunk->npages,
       PCI_DMA_BIDIRECTIONAL);

    if (chunk->nsg <= 0)
     goto fail;
   }

   if (chunk->npages == MTHCA_ICM_CHUNK_LEN)
    chunk = ((void*)0);

   npages -= 1 << cur_order;
  } else {
   --cur_order;
   if (cur_order < 0)
    goto fail;
  }
 }

 if (!coherent && chunk) {
  chunk->nsg = pci_map_sg(dev->pdev, chunk->mem,
     chunk->npages,
     PCI_DMA_BIDIRECTIONAL);

  if (chunk->nsg <= 0)
   goto fail;
 }

 return icm;

fail:
 mthca_free_icm(dev, icm, coherent);
 return ((void*)0);
}
