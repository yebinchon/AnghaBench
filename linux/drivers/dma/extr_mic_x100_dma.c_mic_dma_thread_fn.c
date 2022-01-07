
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mic_dma_cleanup (struct mic_dma_chan*) ;

__attribute__((used)) static irqreturn_t mic_dma_thread_fn(int irq, void *data)
{
 mic_dma_cleanup((struct mic_dma_chan *)data);
 return IRQ_HANDLED;
}
