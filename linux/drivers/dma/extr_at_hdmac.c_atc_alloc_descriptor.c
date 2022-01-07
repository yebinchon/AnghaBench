
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int device; } ;
struct at_dma {int dma_desc_pool; } ;
struct TYPE_2__ {int phys; int tx_submit; int flags; } ;
struct at_desc {TYPE_1__ txd; int tx_list; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int DMA_CTRL_ACK ;
 int INIT_LIST_HEAD (int *) ;
 int atc_tx_submit ;
 int dma_async_tx_descriptor_init (TYPE_1__*,struct dma_chan*) ;
 struct at_desc* dma_pool_zalloc (int ,int ,int *) ;
 struct at_dma* to_at_dma (int ) ;

__attribute__((used)) static struct at_desc *atc_alloc_descriptor(struct dma_chan *chan,
         gfp_t gfp_flags)
{
 struct at_desc *desc = ((void*)0);
 struct at_dma *atdma = to_at_dma(chan->device);
 dma_addr_t phys;

 desc = dma_pool_zalloc(atdma->dma_desc_pool, gfp_flags, &phys);
 if (desc) {
  INIT_LIST_HEAD(&desc->tx_list);
  dma_async_tx_descriptor_init(&desc->txd, chan);

  desc->txd.flags = DMA_CTRL_ACK;
  desc->txd.tx_submit = atc_tx_submit;
  desc->txd.phys = phys;
 }

 return desc;
}
