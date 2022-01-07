
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_dmac_chan {int lock; } ;
struct rcar_dmac {unsigned int n_channels; int channels_mask; struct rcar_dmac_chan* channels; } ;


 int BIT (unsigned int) ;
 int rcar_dmac_chan_halt (struct rcar_dmac_chan*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void rcar_dmac_stop_all_chan(struct rcar_dmac *dmac)
{
 unsigned int i;


 for (i = 0; i < dmac->n_channels; ++i) {
  struct rcar_dmac_chan *chan = &dmac->channels[i];

  if (!(dmac->channels_mask & BIT(i)))
   continue;


  spin_lock_irq(&chan->lock);
  rcar_dmac_chan_halt(chan);
  spin_unlock_irq(&chan->lock);
 }
}
