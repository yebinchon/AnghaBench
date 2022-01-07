
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_srq {int lock; int limit; int max_sge; int num_rqe; } ;
struct ib_srq_attr {int srq_limit; int max_sge; int max_wr; } ;
struct ib_srq {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct siw_srq* to_siw_srq (struct ib_srq*) ;

int siw_query_srq(struct ib_srq *base_srq, struct ib_srq_attr *attrs)
{
 struct siw_srq *srq = to_siw_srq(base_srq);
 unsigned long flags;

 spin_lock_irqsave(&srq->lock, flags);

 attrs->max_wr = srq->num_rqe;
 attrs->max_sge = srq->max_sge;
 attrs->srq_limit = srq->limit;

 spin_unlock_irqrestore(&srq->lock, flags);

 return 0;
}
