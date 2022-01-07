
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ chan; } ;
struct fsl_edma_chan {scalar_t__ dma_dir; int dma_dev_size; int dma_dev_addr; TYPE_3__ vchan; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ DMA_NONE ;
 int dma_unmap_resource (int ,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void fsl_edma_unprep_slave_dma(struct fsl_edma_chan *fsl_chan)
{
 if (fsl_chan->dma_dir != DMA_NONE)
  dma_unmap_resource(fsl_chan->vchan.chan.device->dev,
       fsl_chan->dma_dev_addr,
       fsl_chan->dma_dev_size,
       fsl_chan->dma_dir, 0);
 fsl_chan->dma_dir = DMA_NONE;
}
