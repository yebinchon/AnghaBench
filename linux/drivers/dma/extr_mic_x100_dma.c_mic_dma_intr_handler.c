
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int mic_dma_ack_interrupt (struct mic_dma_chan*) ;

__attribute__((used)) static irqreturn_t mic_dma_intr_handler(int irq, void *data)
{
 struct mic_dma_chan *ch = ((struct mic_dma_chan *)data);

 mic_dma_ack_interrupt(ch);
 return IRQ_WAKE_THREAD;
}
