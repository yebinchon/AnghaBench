
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_slave_config {int src_maxburst; scalar_t__ src_addr_width; scalar_t__ src_addr; int dst_maxburst; scalar_t__ dst_addr_width; scalar_t__ dst_addr; } ;
struct dma_pl330_chan {TYPE_1__* dmac; void* burst_len; void* burst_sz; scalar_t__ fifo_addr; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
struct TYPE_2__ {int quirks; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 void* __ffs (scalar_t__) ;
 void* fixup_burst_len (int ,int ) ;
 int pl330_unprep_slave_fifo (struct dma_pl330_chan*) ;
 struct dma_pl330_chan* to_pchan (struct dma_chan*) ;

__attribute__((used)) static int pl330_config_write(struct dma_chan *chan,
   struct dma_slave_config *slave_config,
   enum dma_transfer_direction direction)
{
 struct dma_pl330_chan *pch = to_pchan(chan);

 pl330_unprep_slave_fifo(pch);
 if (direction == DMA_MEM_TO_DEV) {
  if (slave_config->dst_addr)
   pch->fifo_addr = slave_config->dst_addr;
  if (slave_config->dst_addr_width)
   pch->burst_sz = __ffs(slave_config->dst_addr_width);
  pch->burst_len = fixup_burst_len(slave_config->dst_maxburst,
   pch->dmac->quirks);
 } else if (direction == DMA_DEV_TO_MEM) {
  if (slave_config->src_addr)
   pch->fifo_addr = slave_config->src_addr;
  if (slave_config->src_addr_width)
   pch->burst_sz = __ffs(slave_config->src_addr_width);
  pch->burst_len = fixup_burst_len(slave_config->src_maxburst,
   pch->dmac->quirks);
 }

 return 0;
}
