
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct ishtp_cl {int tx_list_spinlock; TYPE_1__ tx_list; } ;


 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool ishtp_cl_tx_empty(struct ishtp_cl *cl)
{
 int tx_list_empty;
 unsigned long tx_flags;

 spin_lock_irqsave(&cl->tx_list_spinlock, tx_flags);
 tx_list_empty = list_empty(&cl->tx_list.list);
 spin_unlock_irqrestore(&cl->tx_list_spinlock, tx_flags);

 return !!tx_list_empty;
}
