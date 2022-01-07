
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xilinx_dma_chan {scalar_t__ ext_addr; } ;
typedef int dma_addr_t ;


 int dma_ctrl_write (struct xilinx_dma_chan*,int ,int ) ;
 int dma_writeq (struct xilinx_dma_chan*,int ,int ) ;

__attribute__((used)) static inline void xilinx_write(struct xilinx_dma_chan *chan, u32 reg,
    dma_addr_t addr)
{
 if (chan->ext_addr)
  dma_writeq(chan, reg, addr);
 else
  dma_ctrl_write(chan, reg, addr);
}
