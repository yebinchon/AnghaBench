
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsldma_device {scalar_t__ irq; struct fsldma_device** chan; int dev; } ;
struct fsldma_chan {scalar_t__ irq; struct fsldma_chan** chan; int dev; } ;


 int ENODEV ;
 int FSL_DMA_MAX_CHANS_PER_DEVICE ;
 int IRQF_SHARED ;
 int chan_dbg (struct fsldma_device*,char*) ;
 int chan_err (struct fsldma_device*,char*) ;
 int dev_dbg (int ,char*) ;
 int free_irq (scalar_t__,struct fsldma_device*) ;
 int fsldma_chan_irq ;
 int fsldma_ctrl_irq ;
 int request_irq (scalar_t__,int ,int ,char*,struct fsldma_device*) ;

__attribute__((used)) static int fsldma_request_irqs(struct fsldma_device *fdev)
{
 struct fsldma_chan *chan;
 int ret;
 int i;


 if (fdev->irq) {
  dev_dbg(fdev->dev, "request per-controller IRQ\n");
  ret = request_irq(fdev->irq, fsldma_ctrl_irq, IRQF_SHARED,
      "fsldma-controller", fdev);
  return ret;
 }


 for (i = 0; i < FSL_DMA_MAX_CHANS_PER_DEVICE; i++) {
  chan = fdev->chan[i];
  if (!chan)
   continue;

  if (!chan->irq) {
   chan_err(chan, "interrupts property missing in device tree\n");
   ret = -ENODEV;
   goto out_unwind;
  }

  chan_dbg(chan, "request per-channel IRQ\n");
  ret = request_irq(chan->irq, fsldma_chan_irq, IRQF_SHARED,
      "fsldma-chan", chan);
  if (ret) {
   chan_err(chan, "unable to request per-channel IRQ\n");
   goto out_unwind;
  }
 }

 return 0;

out_unwind:
 for ( ; i >= 0; i--) {
  chan = fdev->chan[i];
  if (!chan)
   continue;

  if (!chan->irq)
   continue;

  free_irq(chan->irq, chan);
 }

 return ret;
}
