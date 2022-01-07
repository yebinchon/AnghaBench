
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idma64_lli {int dummy; } ;
struct idma64_chan {int pool; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int chan2dev (struct dma_chan*) ;
 int dev_err (int ,char*) ;
 int dev_name (int ) ;
 int dma_pool_create (int ,int ,int,int,int ) ;
 struct idma64_chan* to_idma64_chan (struct dma_chan*) ;

__attribute__((used)) static int idma64_alloc_chan_resources(struct dma_chan *chan)
{
 struct idma64_chan *idma64c = to_idma64_chan(chan);


 idma64c->pool = dma_pool_create(dev_name(chan2dev(chan)),
     chan->device->dev,
     sizeof(struct idma64_lli), 8, 0);
 if (!idma64c->pool) {
  dev_err(chan2dev(chan), "No memory for descriptors\n");
  return -ENOMEM;
 }

 return 0;
}
