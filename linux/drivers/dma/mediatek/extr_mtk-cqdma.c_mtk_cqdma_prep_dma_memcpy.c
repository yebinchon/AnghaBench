
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_async_tx_descriptor {struct dma_async_tx_descriptor* next; } ;
struct TYPE_2__ {struct dma_async_tx_descriptor tx; } ;
struct mtk_cqdma_vdesc {size_t len; size_t src; size_t dest; size_t residue; TYPE_1__ vd; struct mtk_cqdma_vdesc* parent; struct dma_chan* ch; } ;
struct dma_chan {int dummy; } ;
typedef size_t dma_addr_t ;


 size_t DIV_ROUND_UP (size_t,size_t) ;
 int GFP_NOWAIT ;
 size_t MTK_CQDMA_MAX_LEN ;
 struct mtk_cqdma_vdesc** kcalloc (size_t,int,int ) ;
 int kfree (struct mtk_cqdma_vdesc*) ;
 struct mtk_cqdma_vdesc* kzalloc (int,int ) ;
 int to_virt_chan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int ,TYPE_1__*,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
mtk_cqdma_prep_dma_memcpy(struct dma_chan *c, dma_addr_t dest,
     dma_addr_t src, size_t len, unsigned long flags)
{
 struct mtk_cqdma_vdesc **cvd;
 struct dma_async_tx_descriptor *tx = ((void*)0), *prev_tx = ((void*)0);
 size_t i, tlen, nr_vd;
 nr_vd = DIV_ROUND_UP(len, MTK_CQDMA_MAX_LEN);
 cvd = kcalloc(nr_vd, sizeof(*cvd), GFP_NOWAIT);
 if (!cvd)
  return ((void*)0);

 for (i = 0; i < nr_vd; ++i) {
  cvd[i] = kzalloc(sizeof(*cvd[i]), GFP_NOWAIT);
  if (!cvd[i]) {
   for (; i > 0; --i)
    kfree(cvd[i - 1]);
   return ((void*)0);
  }


  cvd[i]->ch = c;


  tlen = (len > MTK_CQDMA_MAX_LEN) ? MTK_CQDMA_MAX_LEN : len;
  cvd[i]->len = tlen;
  cvd[i]->src = src;
  cvd[i]->dest = dest;


  tx = vchan_tx_prep(to_virt_chan(c), &cvd[i]->vd, flags);
  tx->next = ((void*)0);

  if (!i) {
   cvd[0]->residue = len;
  } else {
   prev_tx->next = tx;
   cvd[i]->residue = tlen;
  }

  cvd[i]->parent = cvd[0];


  src += tlen;
  dest += tlen;
  len -= tlen;
  prev_tx = tx;
 }

 return &cvd[0]->vd.tx;
}
