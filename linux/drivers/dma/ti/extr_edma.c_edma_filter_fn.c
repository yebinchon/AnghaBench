
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct edma_chan {unsigned int ch_num; int hw_triggered; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_6__ {int driver; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int * driver; } ;


 TYPE_3__ edma_driver ;
 struct edma_chan* to_edma_chan (struct dma_chan*) ;

__attribute__((used)) static bool edma_filter_fn(struct dma_chan *chan, void *param)
{
 bool match = 0;

 if (chan->device->dev->driver == &edma_driver.driver) {
  struct edma_chan *echan = to_edma_chan(chan);
  unsigned ch_req = *(unsigned *)param;
  if (ch_req == echan->ch_num) {

   echan->hw_triggered = 1;
   match = 1;
  }
 }
 return match;
}
