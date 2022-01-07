
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_dma_chan {int desc_pool; } ;
struct xilinx_cdma_tx_segment {int phys; } ;
typedef int dma_addr_t ;


 int GFP_ATOMIC ;
 struct xilinx_cdma_tx_segment* dma_pool_zalloc (int ,int ,int *) ;

__attribute__((used)) static struct xilinx_cdma_tx_segment *
xilinx_cdma_alloc_tx_segment(struct xilinx_dma_chan *chan)
{
 struct xilinx_cdma_tx_segment *segment;
 dma_addr_t phys;

 segment = dma_pool_zalloc(chan->desc_pool, GFP_ATOMIC, &phys);
 if (!segment)
  return ((void*)0);

 segment->phys = phys;

 return segment;
}
