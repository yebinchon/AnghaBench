
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_async_tx_descriptor {int phys; int tx_submit; } ;
struct xilinx_dma_tx_descriptor {struct dma_async_tx_descriptor async_tx; int segments; } ;
struct xilinx_dma_chan {scalar_t__ ext_addr; int common; TYPE_1__* xdev; } ;
struct xilinx_cdma_desc_hw {size_t control; int next_desc; void* dest_addr_msb; void* src_addr_msb; void* dest_addr; void* src_addr; } ;
struct xilinx_cdma_tx_segment {int phys; int node; struct xilinx_cdma_desc_hw hw; } ;
struct dma_chan {int dummy; } ;
typedef void* dma_addr_t ;
struct TYPE_2__ {size_t max_buffer_len; } ;


 int dma_async_tx_descriptor_init (struct dma_async_tx_descriptor*,int *) ;
 int list_add_tail (int *,int *) ;
 struct xilinx_dma_chan* to_xilinx_chan (struct dma_chan*) ;
 void* upper_32_bits (void*) ;
 struct xilinx_cdma_tx_segment* xilinx_cdma_alloc_tx_segment (struct xilinx_dma_chan*) ;
 struct xilinx_dma_tx_descriptor* xilinx_dma_alloc_tx_descriptor (struct xilinx_dma_chan*) ;
 int xilinx_dma_free_tx_descriptor (struct xilinx_dma_chan*,struct xilinx_dma_tx_descriptor*) ;
 int xilinx_dma_tx_submit ;

__attribute__((used)) static struct dma_async_tx_descriptor *
xilinx_cdma_prep_memcpy(struct dma_chan *dchan, dma_addr_t dma_dst,
   dma_addr_t dma_src, size_t len, unsigned long flags)
{
 struct xilinx_dma_chan *chan = to_xilinx_chan(dchan);
 struct xilinx_dma_tx_descriptor *desc;
 struct xilinx_cdma_tx_segment *segment;
 struct xilinx_cdma_desc_hw *hw;

 if (!len || len > chan->xdev->max_buffer_len)
  return ((void*)0);

 desc = xilinx_dma_alloc_tx_descriptor(chan);
 if (!desc)
  return ((void*)0);

 dma_async_tx_descriptor_init(&desc->async_tx, &chan->common);
 desc->async_tx.tx_submit = xilinx_dma_tx_submit;


 segment = xilinx_cdma_alloc_tx_segment(chan);
 if (!segment)
  goto error;

 hw = &segment->hw;
 hw->control = len;
 hw->src_addr = dma_src;
 hw->dest_addr = dma_dst;
 if (chan->ext_addr) {
  hw->src_addr_msb = upper_32_bits(dma_src);
  hw->dest_addr_msb = upper_32_bits(dma_dst);
 }


 list_add_tail(&segment->node, &desc->segments);

 desc->async_tx.phys = segment->phys;
 hw->next_desc = segment->phys;

 return &desc->async_tx;

error:
 xilinx_dma_free_tx_descriptor(chan, desc);
 return ((void*)0);
}
