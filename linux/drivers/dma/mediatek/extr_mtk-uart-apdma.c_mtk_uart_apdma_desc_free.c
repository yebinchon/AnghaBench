
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dma_chan* chan; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct mtk_chan {int desc; } ;
struct dma_chan {int dummy; } ;


 int kfree (int ) ;
 struct mtk_chan* to_mtk_uart_apdma_chan (struct dma_chan*) ;

__attribute__((used)) static void mtk_uart_apdma_desc_free(struct virt_dma_desc *vd)
{
 struct dma_chan *chan = vd->tx.chan;
 struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);

 kfree(c->desc);
}
