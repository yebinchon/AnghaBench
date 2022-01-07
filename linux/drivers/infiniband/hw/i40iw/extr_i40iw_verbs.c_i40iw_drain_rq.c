
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_qp {int dummy; } ;
struct TYPE_2__ {int rq_ring; } ;
struct i40iw_sc_qp {TYPE_1__ qp_uk; } ;
struct i40iw_qp {int rq_drained; struct i40iw_sc_qp sc_qp; } ;


 scalar_t__ I40IW_RING_MORE_WORK (int ) ;
 struct i40iw_qp* to_iwqp (struct ib_qp*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void i40iw_drain_rq(struct ib_qp *ibqp)
{
 struct i40iw_qp *iwqp = to_iwqp(ibqp);
 struct i40iw_sc_qp *qp = &iwqp->sc_qp;

 if (I40IW_RING_MORE_WORK(qp->qp_uk.rq_ring))
  wait_for_completion(&iwqp->rq_drained);
}
