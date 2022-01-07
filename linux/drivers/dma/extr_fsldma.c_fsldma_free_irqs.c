
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsldma_device {scalar_t__ irq; struct fsldma_device** chan; int dev; } ;
struct fsldma_chan {scalar_t__ irq; struct fsldma_chan** chan; int dev; } ;


 int FSL_DMA_MAX_CHANS_PER_DEVICE ;
 int chan_dbg (struct fsldma_device*,char*) ;
 int dev_dbg (int ,char*) ;
 int free_irq (scalar_t__,struct fsldma_device*) ;

__attribute__((used)) static void fsldma_free_irqs(struct fsldma_device *fdev)
{
 struct fsldma_chan *chan;
 int i;

 if (fdev->irq) {
  dev_dbg(fdev->dev, "free per-controller IRQ\n");
  free_irq(fdev->irq, fdev);
  return;
 }

 for (i = 0; i < FSL_DMA_MAX_CHANS_PER_DEVICE; i++) {
  chan = fdev->chan[i];
  if (chan && chan->irq) {
   chan_dbg(chan, "free per-channel IRQ\n");
   free_irq(chan->irq, chan);
  }
 }
}
