
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_dma_chan {int free_seg_list; } ;
struct xilinx_axidma_tx_segment {int node; int hw; } ;


 int list_add_tail (int *,int *) ;
 int xilinx_dma_clean_hw_desc (int *) ;

__attribute__((used)) static void xilinx_dma_free_tx_segment(struct xilinx_dma_chan *chan,
    struct xilinx_axidma_tx_segment *segment)
{
 xilinx_dma_clean_hw_desc(&segment->hw);

 list_add_tail(&segment->node, &chan->free_seg_list);
}
