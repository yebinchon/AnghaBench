
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mmp_pdma_chan {unsigned int drcmr; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_6__ {int driver; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int * driver; } ;


 TYPE_3__ mmp_pdma_driver ;
 struct mmp_pdma_chan* to_mmp_pdma_chan (struct dma_chan*) ;

bool mmp_pdma_filter_fn(struct dma_chan *chan, void *param)
{
 struct mmp_pdma_chan *c = to_mmp_pdma_chan(chan);

 if (chan->device->dev->driver != &mmp_pdma_driver.driver)
  return 0;

 c->drcmr = *(unsigned int *)param;

 return 1;
}
