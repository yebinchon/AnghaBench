
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hsdma_vdesc {size_t len; size_t residue; int vd; void* dest; void* src; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef void* dma_addr_t ;


 int GFP_NOWAIT ;
 struct mtk_hsdma_vdesc* kzalloc (int,int ) ;
 int to_virt_chan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int ,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
mtk_hsdma_prep_dma_memcpy(struct dma_chan *c, dma_addr_t dest,
     dma_addr_t src, size_t len, unsigned long flags)
{
 struct mtk_hsdma_vdesc *hvd;

 hvd = kzalloc(sizeof(*hvd), GFP_NOWAIT);
 if (!hvd)
  return ((void*)0);

 hvd->len = len;
 hvd->residue = len;
 hvd->src = src;
 hvd->dest = dest;

 return vchan_tx_prep(to_virt_chan(c), &hvd->vd, flags);
}
