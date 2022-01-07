
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_vdma_tx_segment {int phys; } ;
struct xilinx_dma_chan {int desc_pool; } ;


 int dma_pool_free (int ,struct xilinx_vdma_tx_segment*,int ) ;

__attribute__((used)) static void xilinx_vdma_free_tx_segment(struct xilinx_dma_chan *chan,
     struct xilinx_vdma_tx_segment *segment)
{
 dma_pool_free(chan->desc_pool, segment, segment->phys);
}
