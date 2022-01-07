
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ wq_pidx_inc; } ;
struct TYPE_6__ {scalar_t__ wq_pidx_inc; } ;
struct TYPE_7__ {TYPE_1__ rq; TYPE_2__ sq; } ;
struct c4iw_qp {int lock; TYPE_3__ wq; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_ring_rq_db (TYPE_3__*,scalar_t__,int *) ;
 int t4_ring_sq_db (TYPE_3__*,scalar_t__,int *) ;

__attribute__((used)) static void resume_rc_qp(struct c4iw_qp *qp)
{
 spin_lock(&qp->lock);
 t4_ring_sq_db(&qp->wq, qp->wq.sq.wq_pidx_inc, ((void*)0));
 qp->wq.sq.wq_pidx_inc = 0;
 t4_ring_rq_db(&qp->wq, qp->wq.rq.wq_pidx_inc, ((void*)0));
 qp->wq.rq.wq_pidx_inc = 0;
 spin_unlock(&qp->lock);
}
