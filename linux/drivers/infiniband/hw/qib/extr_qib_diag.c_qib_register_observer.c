
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int qib_diag_trans_lock; struct diag_observer_list_elt* diag_observer_list; } ;
struct diag_observer_list_elt {struct diag_observer_list_elt* next; struct diag_observer const* op; } ;
struct diag_observer {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct diag_observer_list_elt* vmalloc (int) ;

int qib_register_observer(struct qib_devdata *dd,
     const struct diag_observer *op)
{
 struct diag_observer_list_elt *olp;
 unsigned long flags;

 if (!dd || !op)
  return -EINVAL;
 olp = vmalloc(sizeof(*olp));
 if (!olp)
  return -ENOMEM;

 spin_lock_irqsave(&dd->qib_diag_trans_lock, flags);
 olp->op = op;
 olp->next = dd->diag_observer_list;
 dd->diag_observer_list = olp;
 spin_unlock_irqrestore(&dd->qib_diag_trans_lock, flags);

 return 0;
}
