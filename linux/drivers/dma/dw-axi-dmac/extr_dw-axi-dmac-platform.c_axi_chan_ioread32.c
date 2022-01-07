
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct axi_dma_chan {scalar_t__ chan_regs; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 axi_chan_ioread32(struct axi_dma_chan *chan, u32 reg)
{
 return ioread32(chan->chan_regs + reg);
}
