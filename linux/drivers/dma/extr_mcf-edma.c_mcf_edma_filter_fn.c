
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fsl_edma_chan {uintptr_t slave_id; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_6__ {int driver; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int * driver; } ;


 TYPE_3__ mcf_edma_driver ;
 struct fsl_edma_chan* to_fsl_edma_chan (struct dma_chan*) ;

bool mcf_edma_filter_fn(struct dma_chan *chan, void *param)
{
 if (chan->device->dev->driver == &mcf_edma_driver.driver) {
  struct fsl_edma_chan *mcf_chan = to_fsl_edma_chan(chan);

  return (mcf_chan->slave_id == (uintptr_t)param);
 }

 return 0;
}
