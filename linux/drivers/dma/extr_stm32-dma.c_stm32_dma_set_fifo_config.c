
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dma_sfcr; int dma_scr; } ;
struct stm32_dma_chan {TYPE_1__ chan_reg; } ;


 int STM32_DMA_SCR_DMEIE ;
 int STM32_DMA_SFCR_MASK ;

__attribute__((used)) static void stm32_dma_set_fifo_config(struct stm32_dma_chan *chan,
          u32 src_burst, u32 dst_burst)
{
 chan->chan_reg.dma_sfcr &= ~STM32_DMA_SFCR_MASK;
 chan->chan_reg.dma_scr &= ~STM32_DMA_SCR_DMEIE;

 if (!src_burst && !dst_burst) {

  chan->chan_reg.dma_scr |= STM32_DMA_SCR_DMEIE;
 } else {

  chan->chan_reg.dma_sfcr |= STM32_DMA_SFCR_MASK;
 }
}
