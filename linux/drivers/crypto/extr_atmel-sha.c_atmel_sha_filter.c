
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {struct at_dma_slave* private; TYPE_1__* device; } ;
struct at_dma_slave {scalar_t__ dma_dev; } ;
struct TYPE_2__ {scalar_t__ dev; } ;



__attribute__((used)) static bool atmel_sha_filter(struct dma_chan *chan, void *slave)
{
 struct at_dma_slave *sl = slave;

 if (sl && sl->dma_dev == chan->device->dev) {
  chan->private = sl;
  return 1;
 } else {
  return 0;
 }
}
