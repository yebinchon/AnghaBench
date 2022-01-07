
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_dma_chan {scalar_t__ regs; } ;


 scalar_t__ ZYNQMP_DMA_IDS ;
 int ZYNQMP_DMA_IDS_DEFAULT_MASK ;
 int writel (int ,scalar_t__) ;
 int zynqmp_dma_chan_desc_cleanup (struct zynqmp_dma_chan*) ;
 int zynqmp_dma_complete_descriptor (struct zynqmp_dma_chan*) ;
 int zynqmp_dma_free_descriptors (struct zynqmp_dma_chan*) ;
 int zynqmp_dma_init (struct zynqmp_dma_chan*) ;

__attribute__((used)) static void zynqmp_dma_reset(struct zynqmp_dma_chan *chan)
{
 writel(ZYNQMP_DMA_IDS_DEFAULT_MASK, chan->regs + ZYNQMP_DMA_IDS);

 zynqmp_dma_complete_descriptor(chan);
 zynqmp_dma_chan_desc_cleanup(chan);
 zynqmp_dma_free_descriptors(chan);
 zynqmp_dma_init(chan);
}
