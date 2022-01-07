
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct axi_dma_chan {int is_paused; int chip; int id; } ;


 int BIT (int ) ;
 int DMAC_CHAN_SUSP_SHIFT ;
 int DMAC_CHAN_SUSP_WE_SHIFT ;
 int DMAC_CHEN ;
 int axi_dma_ioread32 (int ,int ) ;
 int axi_dma_iowrite32 (int ,int ,int) ;

__attribute__((used)) static inline void axi_chan_resume(struct axi_dma_chan *chan)
{
 u32 val;

 val = axi_dma_ioread32(chan->chip, DMAC_CHEN);
 val &= ~(BIT(chan->id) << DMAC_CHAN_SUSP_SHIFT);
 val |= (BIT(chan->id) << DMAC_CHAN_SUSP_WE_SHIFT);
 axi_dma_iowrite32(chan->chip, DMAC_CHEN, val);

 chan->is_paused = 0;
}
