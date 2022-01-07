
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct k3_dma_dev {TYPE_1__ slave; int lock; int task; int chan_pending; } ;
struct TYPE_5__ {int lock; } ;
struct k3_dma_chan {TYPE_2__ vc; int node; int phy; } ;
struct dma_chan {int device; } ;


 int dev_dbg (int ,char*,TYPE_2__*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 struct k3_dma_chan* to_k3_chan (struct dma_chan*) ;
 struct k3_dma_dev* to_k3_dma (int ) ;
 scalar_t__ vchan_issue_pending (TYPE_2__*) ;

__attribute__((used)) static void k3_dma_issue_pending(struct dma_chan *chan)
{
 struct k3_dma_chan *c = to_k3_chan(chan);
 struct k3_dma_dev *d = to_k3_dma(chan->device);
 unsigned long flags;

 spin_lock_irqsave(&c->vc.lock, flags);

 if (vchan_issue_pending(&c->vc)) {
  spin_lock(&d->lock);
  if (!c->phy) {
   if (list_empty(&c->node)) {

    list_add_tail(&c->node, &d->chan_pending);

    tasklet_schedule(&d->task);
    dev_dbg(d->slave.dev, "vchan %p: issued\n", &c->vc);
   }
  }
  spin_unlock(&d->lock);
 } else
  dev_dbg(d->slave.dev, "vchan %p: nothing to issue\n", &c->vc);
 spin_unlock_irqrestore(&c->vc.lock, flags);
}
