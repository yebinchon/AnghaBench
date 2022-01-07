
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_srq {scalar_t__ num_rqe; int armed; scalar_t__ limit; int lock; } ;
struct ib_udata {int dummy; } ;
struct ib_srq_attr {scalar_t__ srq_limit; } ;
struct ib_srq {int dummy; } ;
typedef enum ib_srq_attr_mask { ____Placeholder_ib_srq_attr_mask } ib_srq_attr_mask ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int IB_SRQ_LIMIT ;
 int IB_SRQ_MAX_WR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct siw_srq* to_siw_srq (struct ib_srq*) ;
 scalar_t__ unlikely (int) ;

int siw_modify_srq(struct ib_srq *base_srq, struct ib_srq_attr *attrs,
     enum ib_srq_attr_mask attr_mask, struct ib_udata *udata)
{
 struct siw_srq *srq = to_siw_srq(base_srq);
 unsigned long flags;
 int rv = 0;

 spin_lock_irqsave(&srq->lock, flags);

 if (attr_mask & IB_SRQ_MAX_WR) {

  rv = -EOPNOTSUPP;
  goto out;
 }
 if (attr_mask & IB_SRQ_LIMIT) {
  if (attrs->srq_limit) {
   if (unlikely(attrs->srq_limit > srq->num_rqe)) {
    rv = -EINVAL;
    goto out;
   }
   srq->armed = 1;
  } else {
   srq->armed = 0;
  }
  srq->limit = attrs->srq_limit;
 }
out:
 spin_unlock_irqrestore(&srq->lock, flags);

 return rv;
}
