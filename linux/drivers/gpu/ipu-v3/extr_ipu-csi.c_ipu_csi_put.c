
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_csi {int inuse; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_csi_put(struct ipu_csi *csi)
{
 unsigned long flags;

 spin_lock_irqsave(&csi->lock, flags);
 csi->inuse = 0;
 spin_unlock_irqrestore(&csi->lock, flags);
}
