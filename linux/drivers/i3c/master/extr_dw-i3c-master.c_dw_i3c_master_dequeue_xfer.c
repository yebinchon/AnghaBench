
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_i3c_xfer {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct dw_i3c_master {TYPE_1__ xferqueue; } ;


 int dw_i3c_master_dequeue_xfer_locked (struct dw_i3c_master*,struct dw_i3c_xfer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dw_i3c_master_dequeue_xfer(struct dw_i3c_master *master,
           struct dw_i3c_xfer *xfer)
{
 unsigned long flags;

 spin_lock_irqsave(&master->xferqueue.lock, flags);
 dw_i3c_master_dequeue_xfer_locked(master, xfer);
 spin_unlock_irqrestore(&master->xferqueue.lock, flags);
}
