
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ qp_type; } ;
struct rvt_qp {TYPE_1__ ibqp; scalar_t__ r_adefered; } ;


 scalar_t__ IB_QPT_RC ;
 int clear_ahg (struct rvt_qp*) ;
 int hfi1_qp_kern_exp_rcv_clear_all (struct rvt_qp*) ;
 int opfn_conn_error (struct rvt_qp*) ;

void notify_qp_reset(struct rvt_qp *qp)
{
 hfi1_qp_kern_exp_rcv_clear_all(qp);
 qp->r_adefered = 0;
 clear_ahg(qp);


 if (qp->ibqp.qp_type == IB_QPT_RC)
  opfn_conn_error(qp);
}
