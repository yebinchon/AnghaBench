
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imxdma_engine {int dev; TYPE_1__* channel; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dma_tasklet; } ;


 int DMA_DBOSR ;
 int DMA_DBTOSR ;
 int DMA_DISR ;
 int DMA_DRTOSR ;
 int DMA_DSESR ;
 int IMX_DMA_CHANNELS ;
 int IMX_DMA_ERR_BUFFER ;
 int IMX_DMA_ERR_BURST ;
 int IMX_DMA_ERR_REQUEST ;
 int IMX_DMA_ERR_TRANSFER ;
 int IRQ_HANDLED ;
 int dev_warn (int ,char*,int,char*,char*,char*,char*) ;
 int imx_dmav1_readl (struct imxdma_engine*,int ) ;
 int imx_dmav1_writel (struct imxdma_engine*,int,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t imxdma_err_handler(int irq, void *dev_id)
{
 struct imxdma_engine *imxdma = dev_id;
 unsigned int err_mask;
 int i, disr;
 int errcode;

 disr = imx_dmav1_readl(imxdma, DMA_DISR);

 err_mask = imx_dmav1_readl(imxdma, DMA_DBTOSR) |
     imx_dmav1_readl(imxdma, DMA_DRTOSR) |
     imx_dmav1_readl(imxdma, DMA_DSESR) |
     imx_dmav1_readl(imxdma, DMA_DBOSR);

 if (!err_mask)
  return IRQ_HANDLED;

 imx_dmav1_writel(imxdma, disr & err_mask, DMA_DISR);

 for (i = 0; i < IMX_DMA_CHANNELS; i++) {
  if (!(err_mask & (1 << i)))
   continue;
  errcode = 0;

  if (imx_dmav1_readl(imxdma, DMA_DBTOSR) & (1 << i)) {
   imx_dmav1_writel(imxdma, 1 << i, DMA_DBTOSR);
   errcode |= IMX_DMA_ERR_BURST;
  }
  if (imx_dmav1_readl(imxdma, DMA_DRTOSR) & (1 << i)) {
   imx_dmav1_writel(imxdma, 1 << i, DMA_DRTOSR);
   errcode |= IMX_DMA_ERR_REQUEST;
  }
  if (imx_dmav1_readl(imxdma, DMA_DSESR) & (1 << i)) {
   imx_dmav1_writel(imxdma, 1 << i, DMA_DSESR);
   errcode |= IMX_DMA_ERR_TRANSFER;
  }
  if (imx_dmav1_readl(imxdma, DMA_DBOSR) & (1 << i)) {
   imx_dmav1_writel(imxdma, 1 << i, DMA_DBOSR);
   errcode |= IMX_DMA_ERR_BUFFER;
  }

  tasklet_schedule(&imxdma->channel[i].dma_tasklet);

  dev_warn(imxdma->dev,
    "DMA timeout on channel %d -%s%s%s%s\n", i,
    errcode & IMX_DMA_ERR_BURST ? " burst" : "",
    errcode & IMX_DMA_ERR_REQUEST ? " request" : "",
    errcode & IMX_DMA_ERR_TRANSFER ? " transfer" : "",
    errcode & IMX_DMA_ERR_BUFFER ? " buffer" : "");
 }
 return IRQ_HANDLED;
}
