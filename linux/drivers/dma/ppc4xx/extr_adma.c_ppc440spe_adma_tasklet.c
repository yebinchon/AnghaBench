
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc440spe_adma_chan {int lock; } ;


 int SINGLE_DEPTH_NESTING ;
 int __ppc440spe_adma_slot_cleanup (struct ppc440spe_adma_chan*) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ppc440spe_adma_tasklet(unsigned long data)
{
 struct ppc440spe_adma_chan *chan = (struct ppc440spe_adma_chan *) data;

 spin_lock_nested(&chan->lock, SINGLE_DEPTH_NESTING);
 __ppc440spe_adma_slot_cleanup(chan);
 spin_unlock(&chan->lock);
}
