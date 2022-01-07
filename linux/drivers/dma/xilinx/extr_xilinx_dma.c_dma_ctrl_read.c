
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xilinx_dma_chan {scalar_t__ ctrl_offset; } ;


 scalar_t__ dma_read (struct xilinx_dma_chan*,scalar_t__) ;

__attribute__((used)) static inline u32 dma_ctrl_read(struct xilinx_dma_chan *chan, u32 reg)
{
 return dma_read(chan, chan->ctrl_offset + reg);
}
