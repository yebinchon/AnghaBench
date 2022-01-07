
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xilinx_dma_chan {TYPE_1__* xdev; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void dma_write(struct xilinx_dma_chan *chan, u32 reg, u32 value)
{
 iowrite32(value, chan->xdev->regs + reg);
}
