
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_channel {int terminate_worker; int vc; } ;
struct dma_chan {int dummy; } ;


 int flush_work (int *) ;
 struct sdma_channel* to_sdma_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void sdma_channel_synchronize(struct dma_chan *chan)
{
 struct sdma_channel *sdmac = to_sdma_chan(chan);

 vchan_synchronize(&sdmac->vc);

 flush_work(&sdmac->terminate_worker);
}
