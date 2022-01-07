
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc440spe_adma_chan {int lock; } ;


 int __ppc440spe_adma_slot_cleanup (struct ppc440spe_adma_chan*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ppc440spe_adma_slot_cleanup(struct ppc440spe_adma_chan *chan)
{
 spin_lock_bh(&chan->lock);
 __ppc440spe_adma_slot_cleanup(chan);
 spin_unlock_bh(&chan->lock);
}
