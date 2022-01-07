
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_slave_config {int src_maxburst; int dst_maxburst; int src_addr_width; int dst_addr_width; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;




 int DMA_SLAVE_BUSWIDTH_UNDEFINED ;
 int EINVAL ;

__attribute__((used)) static int sanitize_config(struct dma_slave_config *sconfig,
      enum dma_transfer_direction direction)
{
 switch (direction) {
 case 128:
  if ((sconfig->dst_addr_width == DMA_SLAVE_BUSWIDTH_UNDEFINED) ||
      !sconfig->dst_maxburst)
   return -EINVAL;

  if (sconfig->src_addr_width == DMA_SLAVE_BUSWIDTH_UNDEFINED)
   sconfig->src_addr_width = sconfig->dst_addr_width;

  if (!sconfig->src_maxburst)
   sconfig->src_maxburst = sconfig->dst_maxburst;

  break;

 case 129:
  if ((sconfig->src_addr_width == DMA_SLAVE_BUSWIDTH_UNDEFINED) ||
      !sconfig->src_maxburst)
   return -EINVAL;

  if (sconfig->dst_addr_width == DMA_SLAVE_BUSWIDTH_UNDEFINED)
   sconfig->dst_addr_width = sconfig->src_addr_width;

  if (!sconfig->dst_maxburst)
   sconfig->dst_maxburst = sconfig->src_maxburst;

  break;
 default:
  return 0;
 }

 return 0;
}
