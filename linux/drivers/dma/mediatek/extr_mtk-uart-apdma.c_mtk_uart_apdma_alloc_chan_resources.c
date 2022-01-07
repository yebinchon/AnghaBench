
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct mtk_uart_apdmadev {scalar_t__ support_33bits; TYPE_1__ ddev; } ;
struct mtk_chan {int irq; scalar_t__ base; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int IRQF_TRIGGER_NONE ;
 int KBUILD_MODNAME ;
 int VFF_4G_SUPPORT ;
 int VFF_4G_SUPPORT_CLR_B ;
 int VFF_ADDR ;
 scalar_t__ VFF_EN ;
 int VFF_LEN ;
 int VFF_RST ;
 int VFF_THRE ;
 int VFF_WARM_RST_B ;
 int dev_err (int ,char*) ;
 int mtk_uart_apdma_irq_handler ;
 int mtk_uart_apdma_write (struct mtk_chan*,int ,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int readl ;
 int readx_poll_timeout (int ,scalar_t__,unsigned int,int,int,int) ;
 int request_irq (int ,int ,int ,int ,struct dma_chan*) ;
 struct mtk_chan* to_mtk_uart_apdma_chan (struct dma_chan*) ;
 struct mtk_uart_apdmadev* to_mtk_uart_apdma_dev (TYPE_2__*) ;

__attribute__((used)) static int mtk_uart_apdma_alloc_chan_resources(struct dma_chan *chan)
{
 struct mtk_uart_apdmadev *mtkd = to_mtk_uart_apdma_dev(chan->device);
 struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
 unsigned int status;
 int ret;

 ret = pm_runtime_get_sync(mtkd->ddev.dev);
 if (ret < 0) {
  pm_runtime_put_noidle(chan->device->dev);
  return ret;
 }

 mtk_uart_apdma_write(c, VFF_ADDR, 0);
 mtk_uart_apdma_write(c, VFF_THRE, 0);
 mtk_uart_apdma_write(c, VFF_LEN, 0);
 mtk_uart_apdma_write(c, VFF_RST, VFF_WARM_RST_B);

 ret = readx_poll_timeout(readl, c->base + VFF_EN,
     status, !status, 10, 100);
 if (ret)
  return ret;

 ret = request_irq(c->irq, mtk_uart_apdma_irq_handler,
     IRQF_TRIGGER_NONE, KBUILD_MODNAME, chan);
 if (ret < 0) {
  dev_err(chan->device->dev, "Can't request dma IRQ\n");
  return -EINVAL;
 }

 if (mtkd->support_33bits)
  mtk_uart_apdma_write(c, VFF_4G_SUPPORT, VFF_4G_SUPPORT_CLR_B);

 return ret;
}
