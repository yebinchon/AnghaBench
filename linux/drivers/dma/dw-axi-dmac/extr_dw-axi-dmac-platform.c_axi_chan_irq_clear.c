
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct axi_dma_chan {int dummy; } ;


 int CH_INTCLEAR ;
 int axi_chan_iowrite32 (struct axi_dma_chan*,int ,int ) ;

__attribute__((used)) static inline void axi_chan_irq_clear(struct axi_dma_chan *chan, u32 irq_mask)
{
 axi_chan_iowrite32(chan, CH_INTCLEAR, irq_mask);
}
