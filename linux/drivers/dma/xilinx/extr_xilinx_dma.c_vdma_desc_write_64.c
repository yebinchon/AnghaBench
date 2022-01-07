
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xilinx_dma_chan {scalar_t__ desc_offset; TYPE_1__* xdev; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void vdma_desc_write_64(struct xilinx_dma_chan *chan, u32 reg,
          u32 value_lsb, u32 value_msb)
{

 writel(value_lsb, chan->xdev->regs + chan->desc_offset + reg);


 writel(value_msb, chan->xdev->regs + chan->desc_offset + reg + 4);
}
