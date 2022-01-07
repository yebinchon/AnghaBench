
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct mtk_chan {scalar_t__ dir; TYPE_1__ vc; } ;
struct dma_chan {int dummy; } ;
typedef int irqreturn_t ;


 scalar_t__ DMA_DEV_TO_MEM ;
 scalar_t__ DMA_MEM_TO_DEV ;
 int IRQ_HANDLED ;
 int mtk_uart_apdma_rx_handler (struct mtk_chan*) ;
 int mtk_uart_apdma_tx_handler (struct mtk_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mtk_chan* to_mtk_uart_apdma_chan (struct dma_chan*) ;

__attribute__((used)) static irqreturn_t mtk_uart_apdma_irq_handler(int irq, void *dev_id)
{
 struct dma_chan *chan = (struct dma_chan *)dev_id;
 struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&c->vc.lock, flags);
 if (c->dir == DMA_DEV_TO_MEM)
  mtk_uart_apdma_rx_handler(c);
 else if (c->dir == DMA_MEM_TO_DEV)
  mtk_uart_apdma_tx_handler(c);
 spin_unlock_irqrestore(&c->vc.lock, flags);

 return IRQ_HANDLED;
}
