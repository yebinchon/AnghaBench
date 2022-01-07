
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zx_dma_phy {int * ds_done; int * ds_run; int * vchan; } ;
struct TYPE_5__ {int dev; } ;
struct zx_dma_dev {int lock; TYPE_1__ slave; } ;
struct TYPE_6__ {int lock; } ;
struct zx_dma_chan {TYPE_2__ vc; struct zx_dma_phy* phy; int node; } ;
struct dma_chan {int device; } ;


 int LIST_HEAD (int ) ;
 int dev_dbg (int ,char*,TYPE_2__*) ;
 int head ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct zx_dma_chan* to_zx_chan (struct dma_chan*) ;
 struct zx_dma_dev* to_zx_dma (int ) ;
 int vchan_dma_desc_free_list (TYPE_2__*,int *) ;
 int vchan_get_all_descriptors (TYPE_2__*,int *) ;
 int zx_dma_terminate_chan (struct zx_dma_phy*,struct zx_dma_dev*) ;

__attribute__((used)) static int zx_dma_terminate_all(struct dma_chan *chan)
{
 struct zx_dma_chan *c = to_zx_chan(chan);
 struct zx_dma_dev *d = to_zx_dma(chan->device);
 struct zx_dma_phy *p = c->phy;
 unsigned long flags;
 LIST_HEAD(head);

 dev_dbg(d->slave.dev, "vchan %p: terminate all\n", &c->vc);


 spin_lock(&d->lock);
 list_del_init(&c->node);
 spin_unlock(&d->lock);


 spin_lock_irqsave(&c->vc.lock, flags);
 vchan_get_all_descriptors(&c->vc, &head);
 if (p) {

  zx_dma_terminate_chan(p, d);
  c->phy = ((void*)0);
  p->vchan = ((void*)0);
  p->ds_run = ((void*)0);
  p->ds_done = ((void*)0);
 }
 spin_unlock_irqrestore(&c->vc.lock, flags);
 vchan_dma_desc_free_list(&c->vc, &head);

 return 0;
}
