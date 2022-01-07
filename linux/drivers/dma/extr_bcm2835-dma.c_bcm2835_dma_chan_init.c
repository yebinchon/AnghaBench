
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct bcm2835_dmadev {int base; TYPE_2__ ddev; } ;
struct TYPE_3__ {int desc_free; } ;
struct bcm2835_chan {int ch; int irq_number; unsigned int irq_flags; int is_lite_channel; scalar_t__ chan_base; TYPE_1__ vc; } ;


 scalar_t__ BCM2835_DMA_CHANIO (int ,int) ;
 scalar_t__ BCM2835_DMA_DEBUG ;
 int BCM2835_DMA_DEBUG_LITE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bcm2835_dma_desc_free ;
 struct bcm2835_chan* devm_kzalloc (int ,int,int ) ;
 int readl (scalar_t__) ;
 int vchan_init (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int bcm2835_dma_chan_init(struct bcm2835_dmadev *d, int chan_id,
     int irq, unsigned int irq_flags)
{
 struct bcm2835_chan *c;

 c = devm_kzalloc(d->ddev.dev, sizeof(*c), GFP_KERNEL);
 if (!c)
  return -ENOMEM;

 c->vc.desc_free = bcm2835_dma_desc_free;
 vchan_init(&c->vc, &d->ddev);

 c->chan_base = BCM2835_DMA_CHANIO(d->base, chan_id);
 c->ch = chan_id;
 c->irq_number = irq;
 c->irq_flags = irq_flags;


 if (readl(c->chan_base + BCM2835_DMA_DEBUG) &
  BCM2835_DMA_DEBUG_LITE)
  c->is_lite_channel = 1;

 return 0;
}
