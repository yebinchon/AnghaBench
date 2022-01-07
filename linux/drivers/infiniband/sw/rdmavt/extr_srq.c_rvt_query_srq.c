
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_sge; scalar_t__ size; } ;
struct rvt_srq {int limit; TYPE_1__ rq; } ;
struct ib_srq_attr {int srq_limit; int max_sge; scalar_t__ max_wr; } ;
struct ib_srq {int dummy; } ;


 struct rvt_srq* ibsrq_to_rvtsrq (struct ib_srq*) ;

int rvt_query_srq(struct ib_srq *ibsrq, struct ib_srq_attr *attr)
{
 struct rvt_srq *srq = ibsrq_to_rvtsrq(ibsrq);

 attr->max_wr = srq->rq.size - 1;
 attr->max_sge = srq->rq.max_sge;
 attr->srq_limit = srq->limit;
 return 0;
}
