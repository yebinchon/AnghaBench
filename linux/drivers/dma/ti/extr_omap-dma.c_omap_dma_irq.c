
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct omap_dmadev {unsigned int irq_enable_mask; int irq_lock; TYPE_1__ ddev; struct omap_chan** lch_map; } ;
struct omap_chan {int dummy; } ;
typedef int irqreturn_t ;


 unsigned int BIT (unsigned int) ;
 int IRQSTATUS_L1 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_err (int ,char*,unsigned int) ;
 unsigned int ffs (unsigned int) ;
 int omap_dma_callback (unsigned int,unsigned int,struct omap_chan*) ;
 unsigned int omap_dma_get_csr (struct omap_chan*) ;
 unsigned int omap_dma_glbl_read (struct omap_dmadev*,int ) ;
 int omap_dma_glbl_write (struct omap_dmadev*,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t omap_dma_irq(int irq, void *devid)
{
 struct omap_dmadev *od = devid;
 unsigned status, channel;

 spin_lock(&od->irq_lock);

 status = omap_dma_glbl_read(od, IRQSTATUS_L1);
 status &= od->irq_enable_mask;
 if (status == 0) {
  spin_unlock(&od->irq_lock);
  return IRQ_NONE;
 }

 while ((channel = ffs(status)) != 0) {
  unsigned mask, csr;
  struct omap_chan *c;

  channel -= 1;
  mask = BIT(channel);
  status &= ~mask;

  c = od->lch_map[channel];
  if (c == ((void*)0)) {

   dev_err(od->ddev.dev, "invalid channel %u\n", channel);
   continue;
  }

  csr = omap_dma_get_csr(c);
  omap_dma_glbl_write(od, IRQSTATUS_L1, mask);

  omap_dma_callback(channel, csr, c);
 }

 spin_unlock(&od->irq_lock);

 return IRQ_HANDLED;
}
