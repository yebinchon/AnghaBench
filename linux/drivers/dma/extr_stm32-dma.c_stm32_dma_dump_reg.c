
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_dma_device {int dummy; } ;
struct stm32_dma_chan {int id; } ;


 int STM32_DMA_SCR (int ) ;
 int STM32_DMA_SFCR (int ) ;
 int STM32_DMA_SM0AR (int ) ;
 int STM32_DMA_SM1AR (int ) ;
 int STM32_DMA_SNDTR (int ) ;
 int STM32_DMA_SPAR (int ) ;
 int chan2dev (struct stm32_dma_chan*) ;
 int dev_dbg (int ,char*,int ) ;
 struct stm32_dma_device* stm32_dma_get_dev (struct stm32_dma_chan*) ;
 int stm32_dma_read (struct stm32_dma_device*,int ) ;

__attribute__((used)) static void stm32_dma_dump_reg(struct stm32_dma_chan *chan)
{
 struct stm32_dma_device *dmadev = stm32_dma_get_dev(chan);
 u32 scr = stm32_dma_read(dmadev, STM32_DMA_SCR(chan->id));
 u32 ndtr = stm32_dma_read(dmadev, STM32_DMA_SNDTR(chan->id));
 u32 spar = stm32_dma_read(dmadev, STM32_DMA_SPAR(chan->id));
 u32 sm0ar = stm32_dma_read(dmadev, STM32_DMA_SM0AR(chan->id));
 u32 sm1ar = stm32_dma_read(dmadev, STM32_DMA_SM1AR(chan->id));
 u32 sfcr = stm32_dma_read(dmadev, STM32_DMA_SFCR(chan->id));

 dev_dbg(chan2dev(chan), "SCR:   0x%08x\n", scr);
 dev_dbg(chan2dev(chan), "NDTR:  0x%08x\n", ndtr);
 dev_dbg(chan2dev(chan), "SPAR:  0x%08x\n", spar);
 dev_dbg(chan2dev(chan), "SM0AR: 0x%08x\n", sm0ar);
 dev_dbg(chan2dev(chan), "SM1AR: 0x%08x\n", sm1ar);
 dev_dbg(chan2dev(chan), "SFCR:  0x%08x\n", sfcr);
}
