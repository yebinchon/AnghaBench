
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_edma_hw_tcd {int dummy; } ;
struct fsl_edma_chan {int tcd_pool; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int dev; } ;


 int dma_pool_create (char*,int ,int,int,int ) ;
 struct fsl_edma_chan* to_fsl_edma_chan (struct dma_chan*) ;

int fsl_edma_alloc_chan_resources(struct dma_chan *chan)
{
 struct fsl_edma_chan *fsl_chan = to_fsl_edma_chan(chan);

 fsl_chan->tcd_pool = dma_pool_create("tcd_pool", chan->device->dev,
    sizeof(struct fsl_edma_hw_tcd),
    32, 0);
 return 0;
}
