
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_dma_device {int dummy; } ;
struct stm32_dma_chan {int id; } ;


 int STM32_DMA_SCR (int ) ;
 int STM32_DMA_SCR_PSIZE_GET (int) ;
 int STM32_DMA_SNDTR (int ) ;
 struct stm32_dma_device* stm32_dma_get_dev (struct stm32_dma_chan*) ;
 int stm32_dma_read (struct stm32_dma_device*,int ) ;

__attribute__((used)) static u32 stm32_dma_get_remaining_bytes(struct stm32_dma_chan *chan)
{
 u32 dma_scr, width, ndtr;
 struct stm32_dma_device *dmadev = stm32_dma_get_dev(chan);

 dma_scr = stm32_dma_read(dmadev, STM32_DMA_SCR(chan->id));
 width = STM32_DMA_SCR_PSIZE_GET(dma_scr);
 ndtr = stm32_dma_read(dmadev, STM32_DMA_SNDTR(chan->id));

 return ndtr << width;
}
