
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dw_edma_desc {int chunks_alloc; struct dw_edma_chunk* chunk; struct dw_edma_chan* chan; } ;
struct TYPE_5__ {scalar_t__ vaddr; scalar_t__ paddr; } ;
struct dw_edma_chunk {int cb; int * burst; int list; TYPE_2__ ll_region; struct dw_edma_chan* chan; } ;
struct dw_edma_chan {scalar_t__ ll_off; TYPE_1__* chip; } ;
struct TYPE_6__ {scalar_t__ vaddr; scalar_t__ paddr; } ;
struct dw_edma {TYPE_3__ ll_region; } ;
struct TYPE_4__ {struct dw_edma* dw; } ;


 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 int dw_edma_alloc_burst (struct dw_edma_chunk*) ;
 int kfree (struct dw_edma_chunk*) ;
 struct dw_edma_chunk* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct dw_edma_chunk *dw_edma_alloc_chunk(struct dw_edma_desc *desc)
{
 struct dw_edma_chan *chan = desc->chan;
 struct dw_edma *dw = chan->chip->dw;
 struct dw_edma_chunk *chunk;

 chunk = kzalloc(sizeof(*chunk), GFP_NOWAIT);
 if (unlikely(!chunk))
  return ((void*)0);

 INIT_LIST_HEAD(&chunk->list);
 chunk->chan = chan;






 chunk->cb = !(desc->chunks_alloc % 2);
 chunk->ll_region.paddr = dw->ll_region.paddr + chan->ll_off;
 chunk->ll_region.vaddr = dw->ll_region.vaddr + chan->ll_off;

 if (desc->chunk) {

  desc->chunks_alloc++;
  list_add_tail(&chunk->list, &desc->chunk->list);
  if (!dw_edma_alloc_burst(chunk)) {
   kfree(chunk);
   return ((void*)0);
  }
 } else {

  chunk->burst = ((void*)0);
  desc->chunks_alloc = 0;
  desc->chunk = chunk;
 }

 return chunk;
}
