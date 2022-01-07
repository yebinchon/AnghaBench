
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx_submit; int flags; } ;
struct ep93xx_dma_desc {TYPE_2__ txd; int tx_list; } ;
struct ep93xx_dma_data {int port; scalar_t__ direction; char* name; } ;
struct ep93xx_dma_chan {int clk; int irq; int lock; TYPE_1__* edma; int chan; } ;
struct dma_chan {struct ep93xx_dma_data* private; } ;
struct TYPE_3__ {int (* hw_setup ) (struct ep93xx_dma_chan*) ;int m2m; } ;


 int DMA_CTRL_ACK ;
 int DMA_MAX_CHAN_DESCRIPTORS ;
 int EINVAL ;
 int EP93XX_DMA_I2S1 ;

 int EP93XX_DMA_IRDA ;

 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int chan2dev (struct ep93xx_dma_chan*) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_warn (int ,char*) ;
 int dma_async_tx_descriptor_init (TYPE_2__*,struct dma_chan*) ;
 char* dma_chan_name (struct dma_chan*) ;
 int dma_cookie_init (int *) ;
 scalar_t__ ep93xx_dma_chan_direction (struct dma_chan*) ;
 int ep93xx_dma_desc_put (struct ep93xx_dma_chan*,struct ep93xx_dma_desc*) ;
 int ep93xx_dma_interrupt ;
 int ep93xx_dma_tx_submit ;
 int free_irq (int ,struct ep93xx_dma_chan*) ;
 int is_slave_direction (scalar_t__) ;
 struct ep93xx_dma_desc* kzalloc (int,int ) ;
 int request_irq (int ,int ,int ,char const*,struct ep93xx_dma_chan*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct ep93xx_dma_chan*) ;
 struct ep93xx_dma_chan* to_ep93xx_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int ep93xx_dma_alloc_chan_resources(struct dma_chan *chan)
{
 struct ep93xx_dma_chan *edmac = to_ep93xx_dma_chan(chan);
 struct ep93xx_dma_data *data = chan->private;
 const char *name = dma_chan_name(chan);
 int ret, i;


 if (!edmac->edma->m2m) {
  if (!data)
   return -EINVAL;
  if (data->port < EP93XX_DMA_I2S1 ||
      data->port > EP93XX_DMA_IRDA)
   return -EINVAL;
  if (data->direction != ep93xx_dma_chan_direction(chan))
   return -EINVAL;
 } else {
  if (data) {
   switch (data->port) {
   case 128:
   case 129:
    if (!is_slave_direction(data->direction))
     return -EINVAL;
    break;
   default:
    return -EINVAL;
   }
  }
 }

 if (data && data->name)
  name = data->name;

 ret = clk_enable(edmac->clk);
 if (ret)
  return ret;

 ret = request_irq(edmac->irq, ep93xx_dma_interrupt, 0, name, edmac);
 if (ret)
  goto fail_clk_disable;

 spin_lock_irq(&edmac->lock);
 dma_cookie_init(&edmac->chan);
 ret = edmac->edma->hw_setup(edmac);
 spin_unlock_irq(&edmac->lock);

 if (ret)
  goto fail_free_irq;

 for (i = 0; i < DMA_MAX_CHAN_DESCRIPTORS; i++) {
  struct ep93xx_dma_desc *desc;

  desc = kzalloc(sizeof(*desc), GFP_KERNEL);
  if (!desc) {
   dev_warn(chan2dev(edmac), "not enough descriptors\n");
   break;
  }

  INIT_LIST_HEAD(&desc->tx_list);

  dma_async_tx_descriptor_init(&desc->txd, chan);
  desc->txd.flags = DMA_CTRL_ACK;
  desc->txd.tx_submit = ep93xx_dma_tx_submit;

  ep93xx_dma_desc_put(edmac, desc);
 }

 return i;

fail_free_irq:
 free_irq(edmac->irq, edmac);
fail_clk_disable:
 clk_disable(edmac->clk);

 return ret;
}
