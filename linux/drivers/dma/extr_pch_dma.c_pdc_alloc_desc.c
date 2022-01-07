
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phys; int flags; int tx_submit; } ;
struct pch_dma_desc {TYPE_1__ txd; int tx_list; } ;
struct pch_dma {int pool; } ;
struct dma_chan {int device; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int DMA_CTRL_ACK ;
 int INIT_LIST_HEAD (int *) ;
 int dma_async_tx_descriptor_init (TYPE_1__*,struct dma_chan*) ;
 struct pch_dma_desc* dma_pool_zalloc (int ,int ,int *) ;
 int pd_tx_submit ;
 struct pch_dma* to_pd (int ) ;

__attribute__((used)) static struct pch_dma_desc *pdc_alloc_desc(struct dma_chan *chan, gfp_t flags)
{
 struct pch_dma_desc *desc = ((void*)0);
 struct pch_dma *pd = to_pd(chan->device);
 dma_addr_t addr;

 desc = dma_pool_zalloc(pd->pool, flags, &addr);
 if (desc) {
  INIT_LIST_HEAD(&desc->tx_list);
  dma_async_tx_descriptor_init(&desc->txd, chan);
  desc->txd.tx_submit = pd_tx_submit;
  desc->txd.flags = DMA_CTRL_ACK;
  desc->txd.phys = addr;
 }

 return desc;
}
