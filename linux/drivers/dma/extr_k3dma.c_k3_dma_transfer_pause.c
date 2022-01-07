
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct k3_dma_phy {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct k3_dma_dev {int lock; TYPE_1__ slave; } ;
struct k3_dma_chan {scalar_t__ status; int node; int vc; struct k3_dma_phy* phy; } ;
struct dma_chan {int device; } ;


 scalar_t__ DMA_IN_PROGRESS ;
 scalar_t__ DMA_PAUSED ;
 int dev_dbg (int ,char*,int *) ;
 int k3_dma_pause_dma (struct k3_dma_phy*,int) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct k3_dma_chan* to_k3_chan (struct dma_chan*) ;
 struct k3_dma_dev* to_k3_dma (int ) ;

__attribute__((used)) static int k3_dma_transfer_pause(struct dma_chan *chan)
{
 struct k3_dma_chan *c = to_k3_chan(chan);
 struct k3_dma_dev *d = to_k3_dma(chan->device);
 struct k3_dma_phy *p = c->phy;

 dev_dbg(d->slave.dev, "vchan %p: pause\n", &c->vc);
 if (c->status == DMA_IN_PROGRESS) {
  c->status = DMA_PAUSED;
  if (p) {
   k3_dma_pause_dma(p, 0);
  } else {
   spin_lock(&d->lock);
   list_del_init(&c->node);
   spin_unlock(&d->lock);
  }
 }

 return 0;
}
