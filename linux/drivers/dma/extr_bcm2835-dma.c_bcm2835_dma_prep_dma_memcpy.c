
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct bcm2835_desc {int vd; } ;
struct bcm2835_chan {int vc; } ;
typedef int dma_addr_t ;


 int BCM2835_DMA_D_INC ;
 int BCM2835_DMA_INT_EN ;
 int BCM2835_DMA_S_INC ;
 int BCM2835_DMA_WAIT_RESP ;
 int DMA_MEM_TO_MEM ;
 int GFP_KERNEL ;
 struct bcm2835_desc* bcm2835_dma_create_cb_chain (struct dma_chan*,int ,int,int,int,size_t,int ,int ,size_t,int ,int ) ;
 size_t bcm2835_dma_frames_for_length (size_t,size_t) ;
 size_t bcm2835_dma_max_frame_length (struct bcm2835_chan*) ;
 struct bcm2835_chan* to_bcm2835_dma_chan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *bcm2835_dma_prep_dma_memcpy(
 struct dma_chan *chan, dma_addr_t dst, dma_addr_t src,
 size_t len, unsigned long flags)
{
 struct bcm2835_chan *c = to_bcm2835_dma_chan(chan);
 struct bcm2835_desc *d;
 u32 info = BCM2835_DMA_D_INC | BCM2835_DMA_S_INC;
 u32 extra = BCM2835_DMA_INT_EN | BCM2835_DMA_WAIT_RESP;
 size_t max_len = bcm2835_dma_max_frame_length(c);
 size_t frames;


 if (!src || !dst || !len)
  return ((void*)0);


 frames = bcm2835_dma_frames_for_length(len, max_len);


 d = bcm2835_dma_create_cb_chain(chan, DMA_MEM_TO_MEM, 0,
     info, extra, frames,
     src, dst, len, 0, GFP_KERNEL);
 if (!d)
  return ((void*)0);

 return vchan_tx_prep(&c->vc, &d->vd, flags);
}
