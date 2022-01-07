
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_adma_chan {int lock; } ;


 int SINGLE_DEPTH_NESTING ;
 int __iop_adma_slot_cleanup (struct iop_adma_chan*) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void iop_adma_tasklet(unsigned long data)
{
 struct iop_adma_chan *iop_chan = (struct iop_adma_chan *) data;






 spin_lock_nested(&iop_chan->lock, SINGLE_DEPTH_NESTING);
 __iop_adma_slot_cleanup(iop_chan);
 spin_unlock(&iop_chan->lock);
}
