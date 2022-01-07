
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns_i3c_xfer {int node; int comp; } ;
struct TYPE_2__ {int lock; struct cdns_i3c_xfer* cur; int list; } ;
struct cdns_i3c_master {TYPE_1__ xferqueue; } ;


 int cdns_i3c_master_start_xfer_locked (struct cdns_i3c_master*) ;
 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cdns_i3c_master_queue_xfer(struct cdns_i3c_master *master,
           struct cdns_i3c_xfer *xfer)
{
 unsigned long flags;

 init_completion(&xfer->comp);
 spin_lock_irqsave(&master->xferqueue.lock, flags);
 if (master->xferqueue.cur) {
  list_add_tail(&xfer->node, &master->xferqueue.list);
 } else {
  master->xferqueue.cur = xfer;
  cdns_i3c_master_start_xfer_locked(master);
 }
 spin_unlock_irqrestore(&master->xferqueue.lock, flags);
}
