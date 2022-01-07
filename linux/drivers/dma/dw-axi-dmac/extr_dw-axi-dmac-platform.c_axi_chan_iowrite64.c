
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct axi_dma_chan {scalar_t__ chan_regs; } ;


 int iowrite32 (int ,scalar_t__) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static inline void
axi_chan_iowrite64(struct axi_dma_chan *chan, u32 reg, u64 val)
{




 iowrite32(lower_32_bits(val), chan->chan_regs + reg);
 iowrite32(upper_32_bits(val), chan->chan_regs + reg + 4);
}
