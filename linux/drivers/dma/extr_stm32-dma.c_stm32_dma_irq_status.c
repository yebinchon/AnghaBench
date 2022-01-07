
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_dma_device {int dummy; } ;
struct stm32_dma_chan {int id; } ;


 int STM32_DMA_HISR ;
 int STM32_DMA_LISR ;
 int STM32_DMA_MASKI ;
 struct stm32_dma_device* stm32_dma_get_dev (struct stm32_dma_chan*) ;
 int stm32_dma_read (struct stm32_dma_device*,int ) ;

__attribute__((used)) static u32 stm32_dma_irq_status(struct stm32_dma_chan *chan)
{
 struct stm32_dma_device *dmadev = stm32_dma_get_dev(chan);
 u32 flags, dma_isr;
 if (chan->id & 4)
  dma_isr = stm32_dma_read(dmadev, STM32_DMA_HISR);
 else
  dma_isr = stm32_dma_read(dmadev, STM32_DMA_LISR);

 flags = dma_isr >> (((chan->id & 2) << 3) | ((chan->id & 1) * 6));

 return flags & STM32_DMA_MASKI;
}
