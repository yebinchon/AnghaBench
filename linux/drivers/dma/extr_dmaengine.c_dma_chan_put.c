
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_chan {int * route_data; TYPE_2__* router; TYPE_1__* device; int client_count; } ;
struct TYPE_4__ {int dev; int (* route_free ) (int ,int *) ;} ;
struct TYPE_3__ {int (* device_free_chan_resources ) (struct dma_chan*) ;} ;


 int dma_chan_to_owner (struct dma_chan*) ;
 int dmaengine_synchronize (struct dma_chan*) ;
 int module_put (int ) ;
 int stub1 (struct dma_chan*) ;
 int stub2 (int ,int *) ;

__attribute__((used)) static void dma_chan_put(struct dma_chan *chan)
{

 if (!chan->client_count)
  return;

 chan->client_count--;
 module_put(dma_chan_to_owner(chan));


 if (!chan->client_count && chan->device->device_free_chan_resources) {

  dmaengine_synchronize(chan);
  chan->device->device_free_chan_resources(chan);
 }


 if (chan->router && chan->router->route_free) {
  chan->router->route_free(chan->router->dev, chan->route_data);
  chan->router = ((void*)0);
  chan->route_data = ((void*)0);
 }
}
