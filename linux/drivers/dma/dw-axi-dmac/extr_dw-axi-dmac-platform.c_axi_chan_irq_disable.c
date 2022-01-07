
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct axi_dma_chan {int dummy; } ;


 int CH_INTSTATUS_ENA ;
 int DWAXIDMAC_IRQ_ALL ;
 int DWAXIDMAC_IRQ_NONE ;
 int axi_chan_ioread32 (struct axi_dma_chan*,int ) ;
 int axi_chan_iowrite32 (struct axi_dma_chan*,int ,int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline void axi_chan_irq_disable(struct axi_dma_chan *chan, u32 irq_mask)
{
 u32 val;

 if (likely(irq_mask == DWAXIDMAC_IRQ_ALL)) {
  axi_chan_iowrite32(chan, CH_INTSTATUS_ENA, DWAXIDMAC_IRQ_NONE);
 } else {
  val = axi_chan_ioread32(chan, CH_INTSTATUS_ENA);
  val &= ~irq_mask;
  axi_chan_iowrite32(chan, CH_INTSTATUS_ENA, val);
 }
}
