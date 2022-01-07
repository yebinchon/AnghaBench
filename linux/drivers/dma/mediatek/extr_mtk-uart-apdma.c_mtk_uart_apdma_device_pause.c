
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct mtk_chan {TYPE_1__ vc; int irq; } ;
struct dma_chan {int dummy; } ;


 int VFF_EN ;
 int VFF_EN_CLR_B ;
 int VFF_INT_EN ;
 int VFF_INT_EN_CLR_B ;
 int mtk_uart_apdma_write (struct mtk_chan*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_irq (int ) ;
 struct mtk_chan* to_mtk_uart_apdma_chan (struct dma_chan*) ;

__attribute__((used)) static int mtk_uart_apdma_device_pause(struct dma_chan *chan)
{
 struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&c->vc.lock, flags);

 mtk_uart_apdma_write(c, VFF_EN, VFF_EN_CLR_B);
 mtk_uart_apdma_write(c, VFF_INT_EN, VFF_INT_EN_CLR_B);

 synchronize_irq(c->irq);

 spin_unlock_irqrestore(&c->vc.lock, flags);

 return 0;
}
