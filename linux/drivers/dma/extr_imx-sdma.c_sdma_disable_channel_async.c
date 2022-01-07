
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_channel {int terminate_worker; scalar_t__ desc; } ;
struct dma_chan {int dummy; } ;


 int schedule_work (int *) ;
 int sdma_disable_channel (struct dma_chan*) ;
 struct sdma_channel* to_sdma_chan (struct dma_chan*) ;

__attribute__((used)) static int sdma_disable_channel_async(struct dma_chan *chan)
{
 struct sdma_channel *sdmac = to_sdma_chan(chan);

 sdma_disable_channel(chan);

 if (sdmac->desc)
  schedule_work(&sdmac->terminate_worker);

 return 0;
}
