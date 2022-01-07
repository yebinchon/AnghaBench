
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int max_sge; TYPE_2__* queue; } ;
struct rxe_srq {int limit; TYPE_3__ rq; scalar_t__ error; } ;
struct ib_srq_attr {int srq_limit; int max_sge; int max_wr; } ;
struct ib_srq {int dummy; } ;
struct TYPE_5__ {TYPE_1__* buf; } ;
struct TYPE_4__ {int index_mask; } ;


 int EINVAL ;
 struct rxe_srq* to_rsrq (struct ib_srq*) ;

__attribute__((used)) static int rxe_query_srq(struct ib_srq *ibsrq, struct ib_srq_attr *attr)
{
 struct rxe_srq *srq = to_rsrq(ibsrq);

 if (srq->error)
  return -EINVAL;

 attr->max_wr = srq->rq.queue->buf->index_mask;
 attr->max_sge = srq->rq.max_sge;
 attr->srq_limit = srq->limit;
 return 0;
}
