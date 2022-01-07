
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct axi_dma_chan {int dummy; } ;


 int CH_INTSTATUS ;
 int axi_chan_ioread32 (struct axi_dma_chan*,int ) ;

__attribute__((used)) static inline u32 axi_chan_irq_read(struct axi_dma_chan *chan)
{
 return axi_chan_ioread32(chan, CH_INTSTATUS);
}
