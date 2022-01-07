
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_7__ {int lock; TYPE_2__ chan; } ;
struct mtk_chan {scalar_t__ dir; TYPE_3__ vc; int irq; scalar_t__ base; } ;
struct dma_chan {int dummy; } ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ DMA_DEV_TO_MEM ;
 scalar_t__ DMA_MEM_TO_DEV ;
 int LIST_HEAD (int ) ;
 int VFF_DEBUG_STATUS ;
 scalar_t__ VFF_EN ;
 scalar_t__ VFF_FLUSH ;
 unsigned int VFF_FLUSH_B ;
 scalar_t__ VFF_INT_EN ;
 unsigned int VFF_INT_EN_CLR_B ;
 scalar_t__ VFF_INT_FLAG ;
 unsigned int VFF_RX_INT_CLR_B ;
 scalar_t__ VFF_STOP ;
 unsigned int VFF_STOP_B ;
 unsigned int VFF_STOP_CLR_B ;
 unsigned int VFF_TX_INT_CLR_B ;
 int dev_err (int ,char*,int ) ;
 int head ;
 int mtk_uart_apdma_read (struct mtk_chan*,int ) ;
 int mtk_uart_apdma_write (struct mtk_chan*,scalar_t__,unsigned int) ;
 int readl ;
 int readx_poll_timeout (int ,scalar_t__,unsigned int,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_irq (int ) ;
 struct mtk_chan* to_mtk_uart_apdma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_3__*,int *) ;
 int vchan_get_all_descriptors (TYPE_3__*,int *) ;

__attribute__((used)) static int mtk_uart_apdma_terminate_all(struct dma_chan *chan)
{
 struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
 unsigned long flags;
 unsigned int status;
 LIST_HEAD(head);
 int ret;

 mtk_uart_apdma_write(c, VFF_FLUSH, VFF_FLUSH_B);

 ret = readx_poll_timeout(readl, c->base + VFF_FLUSH,
     status, status != VFF_FLUSH_B, 10, 100);
 if (ret)
  dev_err(c->vc.chan.device->dev, "flush: fail, status=0x%x\n",
   mtk_uart_apdma_read(c, VFF_DEBUG_STATUS));







 mtk_uart_apdma_write(c, VFF_STOP, VFF_STOP_B);
 ret = readx_poll_timeout(readl, c->base + VFF_EN,
     status, !status, 10, 100);
 if (ret)
  dev_err(c->vc.chan.device->dev, "stop: fail, status=0x%x\n",
   mtk_uart_apdma_read(c, VFF_DEBUG_STATUS));

 mtk_uart_apdma_write(c, VFF_STOP, VFF_STOP_CLR_B);
 mtk_uart_apdma_write(c, VFF_INT_EN, VFF_INT_EN_CLR_B);

 if (c->dir == DMA_DEV_TO_MEM)
  mtk_uart_apdma_write(c, VFF_INT_FLAG, VFF_RX_INT_CLR_B);
 else if (c->dir == DMA_MEM_TO_DEV)
  mtk_uart_apdma_write(c, VFF_INT_FLAG, VFF_TX_INT_CLR_B);

 synchronize_irq(c->irq);

 spin_lock_irqsave(&c->vc.lock, flags);
 vchan_get_all_descriptors(&c->vc, &head);
 vchan_dma_desc_free_list(&c->vc, &head);
 spin_unlock_irqrestore(&c->vc.lock, flags);

 return 0;
}
