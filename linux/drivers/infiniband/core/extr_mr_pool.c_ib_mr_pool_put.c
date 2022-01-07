
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct ib_qp {int mr_lock; int mrs_used; } ;
struct ib_mr {int qp_entry; } ;


 int list_add (int *,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ib_mr_pool_put(struct ib_qp *qp, struct list_head *list, struct ib_mr *mr)
{
 unsigned long flags;

 spin_lock_irqsave(&qp->mr_lock, flags);
 list_add(&mr->qp_entry, list);
 qp->mrs_used--;
 spin_unlock_irqrestore(&qp->mr_lock, flags);
}
