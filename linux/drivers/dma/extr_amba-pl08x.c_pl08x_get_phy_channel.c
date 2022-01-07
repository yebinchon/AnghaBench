
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl08x_phy_chan {int lock; struct pl08x_dma_chan* serving; int locked; } ;
struct pl08x_driver_data {TYPE_1__* vd; struct pl08x_phy_chan* phy_chans; } ;
struct pl08x_dma_chan {int dummy; } ;
struct TYPE_2__ {int channels; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct pl08x_phy_chan *
pl08x_get_phy_channel(struct pl08x_driver_data *pl08x,
        struct pl08x_dma_chan *virt_chan)
{
 struct pl08x_phy_chan *ch = ((void*)0);
 unsigned long flags;
 int i;

 for (i = 0; i < pl08x->vd->channels; i++) {
  ch = &pl08x->phy_chans[i];

  spin_lock_irqsave(&ch->lock, flags);

  if (!ch->locked && !ch->serving) {
   ch->serving = virt_chan;
   spin_unlock_irqrestore(&ch->lock, flags);
   break;
  }

  spin_unlock_irqrestore(&ch->lock, flags);
 }

 if (i == pl08x->vd->channels) {

  return ((void*)0);
 }

 return ch;
}
