
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k3_dma_dev {int lock; } ;
struct k3_dma_chan {scalar_t__ ccfg; int vc; int node; } ;
struct dma_chan {int device; } ;


 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct k3_dma_chan* to_k3_chan (struct dma_chan*) ;
 struct k3_dma_dev* to_k3_dma (int ) ;
 int vchan_free_chan_resources (int *) ;

__attribute__((used)) static void k3_dma_free_chan_resources(struct dma_chan *chan)
{
 struct k3_dma_chan *c = to_k3_chan(chan);
 struct k3_dma_dev *d = to_k3_dma(chan->device);
 unsigned long flags;

 spin_lock_irqsave(&d->lock, flags);
 list_del_init(&c->node);
 spin_unlock_irqrestore(&d->lock, flags);

 vchan_free_chan_resources(&c->vc);
 c->ccfg = 0;
}
