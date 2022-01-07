
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct omap_desc {scalar_t__ sglen; int vd; scalar_t__ using_ll; } ;
struct TYPE_2__ {int lock; } ;
struct omap_chan {scalar_t__ sgidx; TYPE_1__ vc; scalar_t__ cyclic; struct omap_desc* desc; } ;


 int omap_dma_start_desc (struct omap_chan*) ;
 int omap_dma_start_sg (struct omap_chan*,struct omap_desc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vchan_cookie_complete (int *) ;
 int vchan_cyclic_callback (int *) ;

__attribute__((used)) static void omap_dma_callback(int ch, u16 status, void *data)
{
 struct omap_chan *c = data;
 struct omap_desc *d;
 unsigned long flags;

 spin_lock_irqsave(&c->vc.lock, flags);
 d = c->desc;
 if (d) {
  if (c->cyclic) {
   vchan_cyclic_callback(&d->vd);
  } else if (d->using_ll || c->sgidx == d->sglen) {
   omap_dma_start_desc(c);
   vchan_cookie_complete(&d->vd);
  } else {
   omap_dma_start_sg(c, d);
  }
 }
 spin_unlock_irqrestore(&c->vc.lock, flags);
}
