
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct device {int dummy; } ;
struct bcm2835_dma_cb {int dummy; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ chan; } ;
struct bcm2835_chan {int irq_flags; int irq_number; int cb_pool; int ch; TYPE_3__ vc; } ;
struct TYPE_4__ {struct device* dev; } ;


 int ENOMEM ;
 int bcm2835_dma_callback ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int dma_pool_create (int ,struct device*,int,int,int ) ;
 int request_irq (int ,int ,int ,char*,struct bcm2835_chan*) ;
 struct bcm2835_chan* to_bcm2835_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int bcm2835_dma_alloc_chan_resources(struct dma_chan *chan)
{
 struct bcm2835_chan *c = to_bcm2835_dma_chan(chan);
 struct device *dev = c->vc.chan.device->dev;

 dev_dbg(dev, "Allocating DMA channel %d\n", c->ch);





 c->cb_pool = dma_pool_create(dev_name(dev), dev,
         sizeof(struct bcm2835_dma_cb), 32, 0);
 if (!c->cb_pool) {
  dev_err(dev, "unable to allocate descriptor pool\n");
  return -ENOMEM;
 }

 return request_irq(c->irq_number, bcm2835_dma_callback,
      c->irq_flags, "DMA IRQ", c);
}
