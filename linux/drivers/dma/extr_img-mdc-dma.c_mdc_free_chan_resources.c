
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdc_dma {TYPE_1__* soc; } ;
struct mdc_chan {struct mdc_dma* mdma; } ;
struct dma_chan {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* disable_chan ) (struct mdc_chan*) ;} ;


 int mdc_terminate_all (struct dma_chan*) ;
 struct device* mdma2dev (struct mdc_dma*) ;
 int pm_runtime_put (struct device*) ;
 int stub1 (struct mdc_chan*) ;
 struct mdc_chan* to_mdc_chan (struct dma_chan*) ;

__attribute__((used)) static void mdc_free_chan_resources(struct dma_chan *chan)
{
 struct mdc_chan *mchan = to_mdc_chan(chan);
 struct mdc_dma *mdma = mchan->mdma;
 struct device *dev = mdma2dev(mdma);

 mdc_terminate_all(chan);
 mdma->soc->disable_chan(mchan);
 pm_runtime_put(dev);
}
