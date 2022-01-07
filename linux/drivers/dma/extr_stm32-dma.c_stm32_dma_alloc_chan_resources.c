
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct stm32_dma_device {TYPE_1__ ddev; } ;
struct stm32_dma_chan {int config_init; } ;
struct dma_chan {int dummy; } ;


 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int stm32_dma_disable_chan (struct stm32_dma_chan*) ;
 struct stm32_dma_device* stm32_dma_get_dev (struct stm32_dma_chan*) ;
 struct stm32_dma_chan* to_stm32_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int stm32_dma_alloc_chan_resources(struct dma_chan *c)
{
 struct stm32_dma_chan *chan = to_stm32_dma_chan(c);
 struct stm32_dma_device *dmadev = stm32_dma_get_dev(chan);
 int ret;

 chan->config_init = 0;

 ret = pm_runtime_get_sync(dmadev->ddev.dev);
 if (ret < 0)
  return ret;

 ret = stm32_dma_disable_chan(chan);
 if (ret < 0)
  pm_runtime_put(dmadev->ddev.dev);

 return ret;
}
