
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct zx_dma_dev {TYPE_1__ slave; int lock; int chan_pending; } ;
struct TYPE_5__ {int lock; } ;
struct zx_dma_chan {TYPE_2__ vc; int node; int phy; } ;
struct dma_chan {int device; } ;


 int dev_dbg (int ,char*,TYPE_2__*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct zx_dma_chan* to_zx_chan (struct dma_chan*) ;
 struct zx_dma_dev* to_zx_dma (int ) ;
 scalar_t__ vchan_issue_pending (TYPE_2__*) ;
 int zx_dma_task (struct zx_dma_dev*) ;

__attribute__((used)) static void zx_dma_issue_pending(struct dma_chan *chan)
{
 struct zx_dma_chan *c = to_zx_chan(chan);
 struct zx_dma_dev *d = to_zx_dma(chan->device);
 unsigned long flags;
 int issue = 0;

 spin_lock_irqsave(&c->vc.lock, flags);

 if (vchan_issue_pending(&c->vc)) {
  spin_lock(&d->lock);
  if (!c->phy && list_empty(&c->node)) {

   list_add_tail(&c->node, &d->chan_pending);
   issue = 1;
   dev_dbg(d->slave.dev, "vchan %p: issued\n", &c->vc);
  }
  spin_unlock(&d->lock);
 } else {
  dev_dbg(d->slave.dev, "vchan %p: nothing to issue\n", &c->vc);
 }
 spin_unlock_irqrestore(&c->vc.lock, flags);

 if (issue)
  zx_dma_task(d);
}
