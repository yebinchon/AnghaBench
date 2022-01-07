
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_dmadev {unsigned int dma_requests; } ;
struct omap_chan {unsigned int dma_sig; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_6__ {int driver; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int * driver; } ;


 TYPE_3__ omap_dma_driver ;
 struct omap_chan* to_omap_dma_chan (struct dma_chan*) ;
 struct omap_dmadev* to_omap_dma_dev (TYPE_2__*) ;

__attribute__((used)) static bool omap_dma_filter_fn(struct dma_chan *chan, void *param)
{
 if (chan->device->dev->driver == &omap_dma_driver.driver) {
  struct omap_dmadev *od = to_omap_dma_dev(chan->device);
  struct omap_chan *c = to_omap_dma_chan(chan);
  unsigned req = *(unsigned *)param;

  if (req <= od->dma_requests) {
   c->dma_sig = req;
   return 1;
  }
 }
 return 0;
}
