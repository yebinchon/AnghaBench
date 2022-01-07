
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct axi_dma_chan {int id; int chip; } ;


 int BIT (int ) ;
 int DMAC_CHAN_EN_SHIFT ;
 int DMAC_CHEN ;
 int axi_dma_ioread32 (int ,int ) ;

__attribute__((used)) static inline bool axi_chan_is_hw_enable(struct axi_dma_chan *chan)
{
 u32 val;

 val = axi_dma_ioread32(chan->chip, DMAC_CHEN);

 return !!(val & (BIT(chan->id) << DMAC_CHAN_EN_SHIFT));
}
