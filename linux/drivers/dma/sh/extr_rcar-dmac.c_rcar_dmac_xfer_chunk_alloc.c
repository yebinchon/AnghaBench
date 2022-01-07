
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_dmac_xfer_chunk {int node; } ;
struct rcar_dmac_desc_page {int node; struct rcar_dmac_xfer_chunk* chunks; } ;
struct TYPE_2__ {int pages; int chunks_free; } ;
struct rcar_dmac_chan {int lock; TYPE_1__ desc; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int LIST_HEAD (int ) ;
 unsigned int RCAR_DMAC_XFER_CHUNKS_PER_PAGE ;
 scalar_t__ get_zeroed_page (int ) ;
 int list ;
 int list_add_tail (int *,int *) ;
 int list_splice_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rcar_dmac_xfer_chunk_alloc(struct rcar_dmac_chan *chan, gfp_t gfp)
{
 struct rcar_dmac_desc_page *page;
 unsigned long flags;
 LIST_HEAD(list);
 unsigned int i;

 page = (void *)get_zeroed_page(gfp);
 if (!page)
  return -ENOMEM;

 for (i = 0; i < RCAR_DMAC_XFER_CHUNKS_PER_PAGE; ++i) {
  struct rcar_dmac_xfer_chunk *chunk = &page->chunks[i];

  list_add_tail(&chunk->node, &list);
 }

 spin_lock_irqsave(&chan->lock, flags);
 list_splice_tail(&list, &chan->desc.chunks_free);
 list_add_tail(&page->node, &chan->desc.pages);
 spin_unlock_irqrestore(&chan->lock, flags);

 return 0;
}
