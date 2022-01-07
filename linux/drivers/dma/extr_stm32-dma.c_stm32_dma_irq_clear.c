
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_dma_device {int dummy; } ;
struct stm32_dma_chan {int id; } ;


 int STM32_DMA_HIFCR ;
 int STM32_DMA_LIFCR ;
 int STM32_DMA_MASKI ;
 struct stm32_dma_device* stm32_dma_get_dev (struct stm32_dma_chan*) ;
 int stm32_dma_write (struct stm32_dma_device*,int ,int) ;

__attribute__((used)) static void stm32_dma_irq_clear(struct stm32_dma_chan *chan, u32 flags)
{
 struct stm32_dma_device *dmadev = stm32_dma_get_dev(chan);
 u32 dma_ifcr;
 flags &= STM32_DMA_MASKI;
 dma_ifcr = flags << (((chan->id & 2) << 3) | ((chan->id & 1) * 6));

 if (chan->id & 4)
  stm32_dma_write(dmadev, STM32_DMA_HIFCR, dma_ifcr);
 else
  stm32_dma_write(dmadev, STM32_DMA_LIFCR, dma_ifcr);
}
