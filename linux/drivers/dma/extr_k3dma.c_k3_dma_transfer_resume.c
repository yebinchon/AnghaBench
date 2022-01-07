
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct k3_dma_phy {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct k3_dma_dev {int lock; int chan_pending; TYPE_1__ slave; } ;
struct TYPE_4__ {int lock; int desc_issued; } ;
struct k3_dma_chan {scalar_t__ status; TYPE_2__ vc; int node; struct k3_dma_phy* phy; } ;
struct dma_chan {int device; } ;


 scalar_t__ DMA_IN_PROGRESS ;
 scalar_t__ DMA_PAUSED ;
 int dev_dbg (int ,char*,TYPE_2__*) ;
 int k3_dma_pause_dma (struct k3_dma_phy*,int) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct k3_dma_chan* to_k3_chan (struct dma_chan*) ;
 struct k3_dma_dev* to_k3_dma (int ) ;

__attribute__((used)) static int k3_dma_transfer_resume(struct dma_chan *chan)
{
 struct k3_dma_chan *c = to_k3_chan(chan);
 struct k3_dma_dev *d = to_k3_dma(chan->device);
 struct k3_dma_phy *p = c->phy;
 unsigned long flags;

 dev_dbg(d->slave.dev, "vchan %p: resume\n", &c->vc);
 spin_lock_irqsave(&c->vc.lock, flags);
 if (c->status == DMA_PAUSED) {
  c->status = DMA_IN_PROGRESS;
  if (p) {
   k3_dma_pause_dma(p, 1);
  } else if (!list_empty(&c->vc.desc_issued)) {
   spin_lock(&d->lock);
   list_add_tail(&c->node, &d->chan_pending);
   spin_unlock(&d->lock);
  }
 }
 spin_unlock_irqrestore(&c->vc.lock, flags);

 return 0;
}
