
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;


 int DMA_SLAVE_BUSWIDTH_UNDEFINED ;
 int STM32_DMA_FIFO_SIZE ;

__attribute__((used)) static bool stm32_dma_fifo_threshold_is_allowed(u32 burst, u32 threshold,
      enum dma_slave_buswidth width)
{
 u32 remaining;

 if (width != DMA_SLAVE_BUSWIDTH_UNDEFINED) {
  if (burst != 0) {




   remaining = ((STM32_DMA_FIFO_SIZE / width) *
         (threshold + 1) / 4) % burst;

   if (remaining == 0)
    return 1;
  } else {
   return 1;
  }
 }

 return 0;
}
