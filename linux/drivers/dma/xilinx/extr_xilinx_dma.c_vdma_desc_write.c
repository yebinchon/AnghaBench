
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xilinx_dma_chan {scalar_t__ desc_offset; } ;


 int dma_write (struct xilinx_dma_chan*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void vdma_desc_write(struct xilinx_dma_chan *chan, u32 reg,
       u32 value)
{
 dma_write(chan, chan->desc_offset + reg, value);
}
