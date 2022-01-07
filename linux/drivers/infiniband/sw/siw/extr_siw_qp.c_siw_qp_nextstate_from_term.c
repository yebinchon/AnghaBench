
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct siw_qp_attrs {int state; } ;
struct TYPE_3__ {int state; } ;
struct siw_qp {TYPE_1__ attrs; } ;
struct TYPE_4__ {int wr_status; } ;



 int SIW_WR_IDLE ;
 int siw_rq_flush (struct siw_qp*) ;
 int siw_sq_flush (struct siw_qp*) ;
 TYPE_2__* tx_wqe (struct siw_qp*) ;

__attribute__((used)) static void siw_qp_nextstate_from_term(struct siw_qp *qp,
           struct siw_qp_attrs *attrs)
{
 switch (attrs->state) {
 case 128:
  siw_rq_flush(qp);
  qp->attrs.state = 128;

  if (tx_wqe(qp)->wr_status != SIW_WR_IDLE)
   siw_sq_flush(qp);
  break;

 default:
  break;
 }
}
