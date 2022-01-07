
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct virt_dma_desc {int tx; } ;
struct TYPE_3__ {int lock; } ;
struct mtk_chan {scalar_t__ dir; TYPE_1__ vc; int desc; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ DMA_DEV_TO_MEM ;
 scalar_t__ DMA_MEM_TO_DEV ;
 int mtk_uart_apdma_start_rx (struct mtk_chan*) ;
 int mtk_uart_apdma_start_tx (struct mtk_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mtk_chan* to_mtk_uart_apdma_chan (struct dma_chan*) ;
 int to_mtk_uart_apdma_desc (int *) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;
 struct virt_dma_desc* vchan_next_desc (TYPE_1__*) ;

__attribute__((used)) static void mtk_uart_apdma_issue_pending(struct dma_chan *chan)
{
 struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
 struct virt_dma_desc *vd;
 unsigned long flags;

 spin_lock_irqsave(&c->vc.lock, flags);
 if (vchan_issue_pending(&c->vc)) {
  vd = vchan_next_desc(&c->vc);
  c->desc = to_mtk_uart_apdma_desc(&vd->tx);

  if (c->dir == DMA_DEV_TO_MEM)
   mtk_uart_apdma_start_rx(c);
  else if (c->dir == DMA_MEM_TO_DEV)
   mtk_uart_apdma_start_tx(c);
 }

 spin_unlock_irqrestore(&c->vc.lock, flags);
}
