
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct mtk_uart_apdma_desc {int vd; int addr; int avail_len; } ;
struct mtk_chan {int dir; int vc; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;


 int GFP_ATOMIC ;
 int is_slave_direction (int) ;
 struct mtk_uart_apdma_desc* kzalloc (int,int ) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;
 struct mtk_chan* to_mtk_uart_apdma_chan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *mtk_uart_apdma_prep_slave_sg
 (struct dma_chan *chan, struct scatterlist *sgl,
 unsigned int sglen, enum dma_transfer_direction dir,
 unsigned long tx_flags, void *context)
{
 struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
 struct mtk_uart_apdma_desc *d;

 if (!is_slave_direction(dir) || sglen != 1)
  return ((void*)0);


 d = kzalloc(sizeof(*d), GFP_ATOMIC);
 if (!d)
  return ((void*)0);

 d->avail_len = sg_dma_len(sgl);
 d->addr = sg_dma_address(sgl);
 c->dir = dir;

 return vchan_tx_prep(&c->vc, &d->vd, tx_flags);
}
