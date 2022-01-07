
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_mdma_chan {int dma_config; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int memcpy (int *,struct dma_slave_config*,int) ;
 struct stm32_mdma_chan* to_stm32_mdma_chan (struct dma_chan*) ;

__attribute__((used)) static int stm32_mdma_slave_config(struct dma_chan *c,
       struct dma_slave_config *config)
{
 struct stm32_mdma_chan *chan = to_stm32_mdma_chan(c);

 memcpy(&chan->dma_config, config, sizeof(*config));

 return 0;
}
