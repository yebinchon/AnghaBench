
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct axi_dma_chan {scalar_t__ chan_regs; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
axi_chan_iowrite32(struct axi_dma_chan *chan, u32 reg, u32 val)
{
 iowrite32(val, chan->chan_regs + reg);
}
