
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ chan; } ;
struct bcm2835_chan {int ch; TYPE_3__ vc; int cb_pool; int irq_number; } ;
struct TYPE_4__ {int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 int dma_pool_destroy (int ) ;
 int free_irq (int ,struct bcm2835_chan*) ;
 struct bcm2835_chan* to_bcm2835_dma_chan (struct dma_chan*) ;
 int vchan_free_chan_resources (TYPE_3__*) ;

__attribute__((used)) static void bcm2835_dma_free_chan_resources(struct dma_chan *chan)
{
 struct bcm2835_chan *c = to_bcm2835_dma_chan(chan);

 vchan_free_chan_resources(&c->vc);
 free_irq(c->irq_number, c);
 dma_pool_destroy(c->cb_pool);

 dev_dbg(c->vc.chan.device->dev, "Freeing DMA channel %u\n", c->ch);
}
