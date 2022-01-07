
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ started_retry; int rnr_retry; int retry_cnt; } ;
struct TYPE_3__ {int rnr_retry; int retry_cnt; } ;
struct rxe_qp {TYPE_2__ comp; TYPE_1__ attr; } ;



__attribute__((used)) static inline void reset_retry_counters(struct rxe_qp *qp)
{
 qp->comp.retry_cnt = qp->attr.retry_cnt;
 qp->comp.rnr_retry = qp->attr.rnr_retry;
 qp->comp.started_retry = 0;
}
