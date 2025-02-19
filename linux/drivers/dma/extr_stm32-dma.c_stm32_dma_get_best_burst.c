
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;


 int STM32_DMA_MIN_BURST ;
 int stm32_dma_fifo_threshold_is_allowed (int,int,int) ;
 int stm32_dma_is_burst_possible (int,int) ;

__attribute__((used)) static u32 stm32_dma_get_best_burst(u32 buf_len, u32 max_burst, u32 threshold,
        enum dma_slave_buswidth width)
{
 u32 best_burst = max_burst;

 if (best_burst == 1 || !stm32_dma_is_burst_possible(buf_len, threshold))
  return 0;

 while ((buf_len < best_burst * width && best_burst > 1) ||
        !stm32_dma_fifo_threshold_is_allowed(best_burst, threshold,
          width)) {
  if (best_burst > STM32_DMA_MIN_BURST)
   best_burst = best_burst >> 1;
  else
   best_burst = 0;
 }

 return best_burst;
}
