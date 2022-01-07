
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_device {int start_ch; struct mic_dma_chan* mic_ch; } ;
struct mic_dma_chan {int dummy; } ;


 int MIC_DMA_NUM_CHAN ;
 int mic_dma_free_irq (struct mic_dma_chan*) ;

__attribute__((used)) static void mic_dma_uninit(struct mic_dma_device *mic_dma_dev)
{
 int i, first_chan = mic_dma_dev->start_ch;
 struct mic_dma_chan *ch;

 for (i = first_chan; i < first_chan + MIC_DMA_NUM_CHAN; i++) {
  ch = &mic_dma_dev->mic_ch[i];
  mic_dma_free_irq(ch);
 }
}
