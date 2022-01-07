
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int sprd_dma_alloc_chan_resources(struct dma_chan *chan)
{
 return pm_runtime_get_sync(chan->device->dev);
}
