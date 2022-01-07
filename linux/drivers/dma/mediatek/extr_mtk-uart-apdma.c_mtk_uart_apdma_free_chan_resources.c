
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct mtk_uart_apdmadev {TYPE_1__ ddev; } ;
struct TYPE_4__ {int task; } ;
struct mtk_chan {TYPE_2__ vc; int irq; } ;
struct dma_chan {int device; } ;


 int free_irq (int ,struct dma_chan*) ;
 int pm_runtime_put_sync (int ) ;
 int tasklet_kill (int *) ;
 struct mtk_chan* to_mtk_uart_apdma_chan (struct dma_chan*) ;
 struct mtk_uart_apdmadev* to_mtk_uart_apdma_dev (int ) ;
 int vchan_free_chan_resources (TYPE_2__*) ;

__attribute__((used)) static void mtk_uart_apdma_free_chan_resources(struct dma_chan *chan)
{
 struct mtk_uart_apdmadev *mtkd = to_mtk_uart_apdma_dev(chan->device);
 struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);

 free_irq(c->irq, chan);

 tasklet_kill(&c->vc.task);

 vchan_free_chan_resources(&c->vc);

 pm_runtime_put_sync(mtkd->ddev.dev);
}
