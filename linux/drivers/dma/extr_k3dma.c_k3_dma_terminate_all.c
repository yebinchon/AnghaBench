
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct k3_dma_phy {int * ds_done; TYPE_2__* ds_run; int * vchan; } ;
struct TYPE_6__ {int dev; } ;
struct k3_dma_dev {int lock; TYPE_1__ slave; } ;
struct TYPE_8__ {int lock; } ;
struct k3_dma_chan {TYPE_3__ vc; struct k3_dma_phy* phy; int node; } ;
struct dma_chan {int device; } ;
struct TYPE_7__ {int vd; } ;


 int LIST_HEAD (int ) ;
 int dev_dbg (int ,char*,TYPE_3__*) ;
 int head ;
 int k3_dma_terminate_chan (struct k3_dma_phy*,struct k3_dma_dev*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct k3_dma_chan* to_k3_chan (struct dma_chan*) ;
 struct k3_dma_dev* to_k3_dma (int ) ;
 int vchan_dma_desc_free_list (TYPE_3__*,int *) ;
 int vchan_get_all_descriptors (TYPE_3__*,int *) ;
 int vchan_terminate_vdesc (int *) ;

__attribute__((used)) static int k3_dma_terminate_all(struct dma_chan *chan)
{
 struct k3_dma_chan *c = to_k3_chan(chan);
 struct k3_dma_dev *d = to_k3_dma(chan->device);
 struct k3_dma_phy *p = c->phy;
 unsigned long flags;
 LIST_HEAD(head);

 dev_dbg(d->slave.dev, "vchan %p: terminate all\n", &c->vc);


 spin_lock(&d->lock);
 list_del_init(&c->node);
 spin_unlock(&d->lock);


 spin_lock_irqsave(&c->vc.lock, flags);
 vchan_get_all_descriptors(&c->vc, &head);
 if (p) {

  k3_dma_terminate_chan(p, d);
  c->phy = ((void*)0);
  p->vchan = ((void*)0);
  if (p->ds_run) {
   vchan_terminate_vdesc(&p->ds_run->vd);
   p->ds_run = ((void*)0);
  }
  p->ds_done = ((void*)0);
 }
 spin_unlock_irqrestore(&c->vc.lock, flags);
 vchan_dma_desc_free_list(&c->vc, &head);

 return 0;
}
