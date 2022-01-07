
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm2835_desc {int vd; scalar_t__ cyclic; } ;
struct TYPE_2__ {int lock; } ;
struct bcm2835_chan {int irq_flags; TYPE_1__ vc; struct bcm2835_desc* desc; scalar_t__ chan_base; } ;
typedef int irqreturn_t ;


 unsigned long BCM2835_DMA_ACTIVE ;
 scalar_t__ BCM2835_DMA_ADDR ;
 scalar_t__ BCM2835_DMA_CS ;
 unsigned long BCM2835_DMA_INT ;
 int IRQF_SHARED ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int bcm2835_dma_start_desc (struct bcm2835_chan*) ;
 unsigned long readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vchan_cookie_complete (int *) ;
 int vchan_cyclic_callback (int *) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static irqreturn_t bcm2835_dma_callback(int irq, void *data)
{
 struct bcm2835_chan *c = data;
 struct bcm2835_desc *d;
 unsigned long flags;


 if (c->irq_flags & IRQF_SHARED) {

  flags = readl(c->chan_base + BCM2835_DMA_CS);

  if (!(flags & BCM2835_DMA_INT))
   return IRQ_NONE;
 }

 spin_lock_irqsave(&c->vc.lock, flags);
 writel(BCM2835_DMA_INT | BCM2835_DMA_ACTIVE,
        c->chan_base + BCM2835_DMA_CS);

 d = c->desc;

 if (d) {
  if (d->cyclic) {

   vchan_cyclic_callback(&d->vd);
  } else if (!readl(c->chan_base + BCM2835_DMA_ADDR)) {
   vchan_cookie_complete(&c->desc->vd);
   bcm2835_dma_start_desc(c);
  }
 }

 spin_unlock_irqrestore(&c->vc.lock, flags);

 return IRQ_HANDLED;
}
