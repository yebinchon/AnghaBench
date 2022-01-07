
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dma_chan {int dummy; } ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;





 int EINVAL ;
 int STM32_DMA_BYTE ;
 int STM32_DMA_HALF_WORD ;
 int STM32_DMA_WORD ;
 int chan2dev (struct stm32_dma_chan*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int stm32_dma_get_width(struct stm32_dma_chan *chan,
          enum dma_slave_buswidth width)
{
 switch (width) {
 case 130:
  return STM32_DMA_BYTE;
 case 129:
  return STM32_DMA_HALF_WORD;
 case 128:
  return STM32_DMA_WORD;
 default:
  dev_err(chan2dev(chan), "Dma bus width not supported\n");
  return -EINVAL;
 }
}
