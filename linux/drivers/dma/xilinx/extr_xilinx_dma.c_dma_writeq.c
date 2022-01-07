
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct xilinx_dma_chan {scalar_t__ ctrl_offset; TYPE_1__* xdev; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 int lo_hi_writeq (int ,scalar_t__) ;

__attribute__((used)) static inline void dma_writeq(struct xilinx_dma_chan *chan, u32 reg, u64 value)
{
 lo_hi_writeq(value, chan->xdev->regs + chan->ctrl_offset + reg);
}
