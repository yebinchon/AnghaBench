
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dma_chan {int config_init; int dma_sconfig; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int memcpy (int *,struct dma_slave_config*,int) ;
 struct stm32_dma_chan* to_stm32_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int stm32_dma_slave_config(struct dma_chan *c,
      struct dma_slave_config *config)
{
 struct stm32_dma_chan *chan = to_stm32_dma_chan(c);

 memcpy(&chan->dma_sconfig, config, sizeof(*config));

 chan->config_init = 1;

 return 0;
}
