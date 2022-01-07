
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_scr; } ;
struct stm32_dma_chan {int threshold; TYPE_1__ chan_reg; } ;
struct stm32_dma_cfg {int stream_config; int features; int request_line; } ;


 int STM32_DMA_SCR_CFG_MASK ;
 int STM32_DMA_SCR_REQ (int ) ;
 int STM32_DMA_SCR_TCIE ;
 int STM32_DMA_SCR_TEIE ;
 int STM32_DMA_THRESHOLD_FTR_GET (int ) ;
 int stm32_dma_clear_reg (TYPE_1__*) ;

__attribute__((used)) static void stm32_dma_set_config(struct stm32_dma_chan *chan,
     struct stm32_dma_cfg *cfg)
{
 stm32_dma_clear_reg(&chan->chan_reg);

 chan->chan_reg.dma_scr = cfg->stream_config & STM32_DMA_SCR_CFG_MASK;
 chan->chan_reg.dma_scr |= STM32_DMA_SCR_REQ(cfg->request_line);


 chan->chan_reg.dma_scr |= STM32_DMA_SCR_TEIE | STM32_DMA_SCR_TCIE;

 chan->threshold = STM32_DMA_THRESHOLD_FTR_GET(cfg->features);
}
