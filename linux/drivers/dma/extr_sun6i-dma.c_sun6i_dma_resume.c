
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int desc_issued; } ;
struct sun6i_vchan {TYPE_1__ vc; int node; struct sun6i_pchan* phy; } ;
struct sun6i_pchan {scalar_t__ base; } ;
struct sun6i_dma_dev {int lock; int pending; } ;
struct dma_chan {int device; } ;


 scalar_t__ DMA_CHAN_PAUSE ;
 int DMA_CHAN_PAUSE_RESUME ;
 int chan2dev (struct dma_chan*) ;
 int dev_dbg (int ,char*,TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sun6i_dma_dev* to_sun6i_dma_dev (int ) ;
 struct sun6i_vchan* to_sun6i_vchan (struct dma_chan*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sun6i_dma_resume(struct dma_chan *chan)
{
 struct sun6i_dma_dev *sdev = to_sun6i_dma_dev(chan->device);
 struct sun6i_vchan *vchan = to_sun6i_vchan(chan);
 struct sun6i_pchan *pchan = vchan->phy;
 unsigned long flags;

 dev_dbg(chan2dev(chan), "vchan %p: resume\n", &vchan->vc);

 spin_lock_irqsave(&vchan->vc.lock, flags);

 if (pchan) {
  writel(DMA_CHAN_PAUSE_RESUME,
         pchan->base + DMA_CHAN_PAUSE);
 } else if (!list_empty(&vchan->vc.desc_issued)) {
  spin_lock(&sdev->lock);
  list_add_tail(&vchan->node, &sdev->pending);
  spin_unlock(&sdev->lock);
 }

 spin_unlock_irqrestore(&vchan->vc.lock, flags);

 return 0;
}
