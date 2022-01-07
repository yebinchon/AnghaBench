
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdc_chan {int mdma; } ;
struct dma_chan {int dummy; } ;
struct device {int dummy; } ;


 struct device* mdma2dev (int ) ;
 int pm_runtime_get_sync (struct device*) ;
 struct mdc_chan* to_mdc_chan (struct dma_chan*) ;

__attribute__((used)) static int mdc_alloc_chan_resources(struct dma_chan *chan)
{
 struct mdc_chan *mchan = to_mdc_chan(chan);
 struct device *dev = mdma2dev(mchan->mdma);

 return pm_runtime_get_sync(dev);
}
