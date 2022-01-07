
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rcar_dmac_desc_page {int node; struct rcar_dmac_desc* descs; } ;
struct TYPE_4__ {int tx_submit; } ;
struct rcar_dmac_desc {int node; int chunks; TYPE_2__ async_tx; } ;
struct TYPE_3__ {int pages; int free; } ;
struct rcar_dmac_chan {int lock; TYPE_1__ desc; int chan; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int LIST_HEAD (int ) ;
 unsigned int RCAR_DMAC_DESCS_PER_PAGE ;
 int dma_async_tx_descriptor_init (TYPE_2__*,int *) ;
 scalar_t__ get_zeroed_page (int ) ;
 int list ;
 int list_add_tail (int *,int *) ;
 int list_splice_tail (int *,int *) ;
 int rcar_dmac_tx_submit ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rcar_dmac_desc_alloc(struct rcar_dmac_chan *chan, gfp_t gfp)
{
 struct rcar_dmac_desc_page *page;
 unsigned long flags;
 LIST_HEAD(list);
 unsigned int i;

 page = (void *)get_zeroed_page(gfp);
 if (!page)
  return -ENOMEM;

 for (i = 0; i < RCAR_DMAC_DESCS_PER_PAGE; ++i) {
  struct rcar_dmac_desc *desc = &page->descs[i];

  dma_async_tx_descriptor_init(&desc->async_tx, &chan->chan);
  desc->async_tx.tx_submit = rcar_dmac_tx_submit;
  INIT_LIST_HEAD(&desc->chunks);

  list_add_tail(&desc->node, &list);
 }

 spin_lock_irqsave(&chan->lock, flags);
 list_splice_tail(&list, &chan->desc.free);
 list_add_tail(&page->node, &chan->desc.pages);
 spin_unlock_irqrestore(&chan->lock, flags);

 return 0;
}
