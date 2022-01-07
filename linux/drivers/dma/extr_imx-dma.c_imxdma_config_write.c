
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxdma_engine {int dummy; } ;
struct imxdma_channel {int watermark_level; int word_size; unsigned int ccr_from_device; int ccr_to_device; int dma_request; int channel; scalar_t__ hw_chaining; int per_address; struct imxdma_engine* imxdma; } ;
struct dma_slave_config {int src_maxburst; int src_addr_width; int dst_maxburst; int dst_addr_width; int dst_addr; int src_addr; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;


 unsigned int CCR_REN ;
 int DMA_BLR (int ) ;
 int DMA_DEV_TO_MEM ;
 int DMA_RSSR (int ) ;



 unsigned int IMX_DMA_MEMSIZE_16 ;
 int IMX_DMA_MEMSIZE_32 ;
 unsigned int IMX_DMA_MEMSIZE_8 ;
 unsigned int IMX_DMA_TYPE_FIFO ;
 int IMX_DMA_TYPE_LINEAR ;
 int imx_dmav1_writel (struct imxdma_engine*,int,int ) ;
 struct imxdma_channel* to_imxdma_chan (struct dma_chan*) ;

__attribute__((used)) static int imxdma_config_write(struct dma_chan *chan,
          struct dma_slave_config *dmaengine_cfg,
          enum dma_transfer_direction direction)
{
 struct imxdma_channel *imxdmac = to_imxdma_chan(chan);
 struct imxdma_engine *imxdma = imxdmac->imxdma;
 unsigned int mode = 0;

 if (direction == DMA_DEV_TO_MEM) {
  imxdmac->per_address = dmaengine_cfg->src_addr;
  imxdmac->watermark_level = dmaengine_cfg->src_maxburst;
  imxdmac->word_size = dmaengine_cfg->src_addr_width;
 } else {
  imxdmac->per_address = dmaengine_cfg->dst_addr;
  imxdmac->watermark_level = dmaengine_cfg->dst_maxburst;
  imxdmac->word_size = dmaengine_cfg->dst_addr_width;
 }

 switch (imxdmac->word_size) {
 case 130:
  mode = IMX_DMA_MEMSIZE_8;
  break;
 case 129:
  mode = IMX_DMA_MEMSIZE_16;
  break;
 default:
 case 128:
  mode = IMX_DMA_MEMSIZE_32;
  break;
 }

 imxdmac->hw_chaining = 0;

 imxdmac->ccr_from_device = (mode | IMX_DMA_TYPE_FIFO) |
  ((IMX_DMA_MEMSIZE_32 | IMX_DMA_TYPE_LINEAR) << 2) |
  CCR_REN;
 imxdmac->ccr_to_device =
  (IMX_DMA_MEMSIZE_32 | IMX_DMA_TYPE_LINEAR) |
  ((mode | IMX_DMA_TYPE_FIFO) << 2) | CCR_REN;
 imx_dmav1_writel(imxdma, imxdmac->dma_request,
    DMA_RSSR(imxdmac->channel));


 imx_dmav1_writel(imxdma, imxdmac->watermark_level *
    imxdmac->word_size, DMA_BLR(imxdmac->channel));

 return 0;
}
