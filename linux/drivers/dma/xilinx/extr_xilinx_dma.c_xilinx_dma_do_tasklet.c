
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_dma_chan {int dummy; } ;


 int xilinx_dma_chan_desc_cleanup (struct xilinx_dma_chan*) ;

__attribute__((used)) static void xilinx_dma_do_tasklet(unsigned long data)
{
 struct xilinx_dma_chan *chan = (struct xilinx_dma_chan *)data;

 xilinx_dma_chan_desc_cleanup(chan);
}
