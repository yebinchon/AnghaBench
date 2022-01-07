
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct sun6i_vchan {TYPE_1__ vc; int node; int phy; } ;
struct sun6i_dma_dev {int lock; int task; int pending; } ;
struct dma_chan {int device; } ;


 int chan2dev (struct dma_chan*) ;
 int dev_dbg (int ,char*,TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 struct sun6i_dma_dev* to_sun6i_dma_dev (int ) ;
 struct sun6i_vchan* to_sun6i_vchan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void sun6i_dma_issue_pending(struct dma_chan *chan)
{
 struct sun6i_dma_dev *sdev = to_sun6i_dma_dev(chan->device);
 struct sun6i_vchan *vchan = to_sun6i_vchan(chan);
 unsigned long flags;

 spin_lock_irqsave(&vchan->vc.lock, flags);

 if (vchan_issue_pending(&vchan->vc)) {
  spin_lock(&sdev->lock);

  if (!vchan->phy && list_empty(&vchan->node)) {
   list_add_tail(&vchan->node, &sdev->pending);
   tasklet_schedule(&sdev->task);
   dev_dbg(chan2dev(chan), "vchan %p: issued\n",
    &vchan->vc);
  }

  spin_unlock(&sdev->lock);
 } else {
  dev_dbg(chan2dev(chan), "vchan %p: nothing to issue\n",
   &vchan->vc);
 }

 spin_unlock_irqrestore(&vchan->vc.lock, flags);
}
