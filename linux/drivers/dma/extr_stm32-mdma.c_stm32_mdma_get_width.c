
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_mdma_chan {int dummy; } ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;






 int EINVAL ;
 int chan2dev (struct stm32_mdma_chan*) ;
 int dev_err (int ,char*,int) ;
 int ffs (int) ;

__attribute__((used)) static int stm32_mdma_get_width(struct stm32_mdma_chan *chan,
    enum dma_slave_buswidth width)
{
 switch (width) {
 case 131:
 case 130:
 case 129:
 case 128:
  return ffs(width) - 1;
 default:
  dev_err(chan2dev(chan), "Dma bus width %i not supported\n",
   width);
  return -EINVAL;
 }
}
