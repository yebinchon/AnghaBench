
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xilinx_dma_chan {int dummy; } ;


 int dma_ctrl_read (struct xilinx_dma_chan*,int) ;
 int dma_ctrl_write (struct xilinx_dma_chan*,int,int) ;

__attribute__((used)) static inline void dma_ctrl_set(struct xilinx_dma_chan *chan, u32 reg,
     u32 set)
{
 dma_ctrl_write(chan, reg, dma_ctrl_read(chan, reg) | set);
}
