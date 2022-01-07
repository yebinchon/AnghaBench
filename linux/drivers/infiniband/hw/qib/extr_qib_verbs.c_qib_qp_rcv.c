
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int qp_type; } ;
struct rvt_qp {size_t state; int r_lock; TYPE_2__ ibqp; } ;
struct TYPE_4__ {int n_pkt_drops; } ;
struct qib_ibport {TYPE_1__ rvp; } ;
struct qib_ctxtdata {TYPE_3__* ppd; } ;
struct ib_header {int dummy; } ;
struct TYPE_6__ {struct qib_ibport ibport_data; } ;







 int RVT_PROCESS_RECV_OK ;
 int ib_qib_disable_sma ;
 int* ib_rvt_state_ops ;
 int qib_rc_rcv (struct qib_ctxtdata*,struct ib_header*,int,void*,int ,struct rvt_qp*) ;
 int qib_uc_rcv (struct qib_ibport*,struct ib_header*,int,void*,int ,struct rvt_qp*) ;
 int qib_ud_rcv (struct qib_ibport*,struct ib_header*,int,void*,int ,struct rvt_qp*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void qib_qp_rcv(struct qib_ctxtdata *rcd, struct ib_header *hdr,
         int has_grh, void *data, u32 tlen, struct rvt_qp *qp)
{
 struct qib_ibport *ibp = &rcd->ppd->ibport_data;

 spin_lock(&qp->r_lock);


 if (!(ib_rvt_state_ops[qp->state] & RVT_PROCESS_RECV_OK)) {
  ibp->rvp.n_pkt_drops++;
  goto unlock;
 }

 switch (qp->ibqp.qp_type) {
 case 130:
 case 132:
  if (ib_qib_disable_sma)
   break;

 case 128:
  qib_ud_rcv(ibp, hdr, has_grh, data, tlen, qp);
  break;

 case 131:
  qib_rc_rcv(rcd, hdr, has_grh, data, tlen, qp);
  break;

 case 129:
  qib_uc_rcv(ibp, hdr, has_grh, data, tlen, qp);
  break;

 default:
  break;
 }

unlock:
 spin_unlock(&qp->r_lock);
}
