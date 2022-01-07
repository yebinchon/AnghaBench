
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_mdma_chan {int vchan; } ;
struct dma_chan {int dummy; } ;


 struct stm32_mdma_chan* to_stm32_mdma_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void stm32_mdma_synchronize(struct dma_chan *c)
{
 struct stm32_mdma_chan *chan = to_stm32_mdma_chan(c);

 vchan_synchronize(&chan->vchan);
}
