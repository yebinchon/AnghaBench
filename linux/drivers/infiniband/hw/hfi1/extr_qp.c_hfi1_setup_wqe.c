
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rvt_swqe {int length; } ;
struct TYPE_3__ {int qp_type; int device; } ;
struct rvt_qp {int pmtu; TYPE_1__ ibqp; int port_num; } ;
struct rvt_ah {int log_pmtu; int attr; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_ibport {int* sl_to_sc; } ;
struct hfi1_devdata {TYPE_2__* vld; } ;
struct TYPE_4__ {int mtu; } ;


 int EINVAL ;





 struct hfi1_devdata* dd_from_ppd (struct hfi1_pportdata*) ;
 int hfi1_setup_tid_rdma_wqe (struct rvt_qp*,struct rvt_swqe*) ;
 scalar_t__ piothreshold ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 size_t rdma_ah_get_sl (int *) ;
 struct rvt_ah* rvt_get_swqe_ah (struct rvt_swqe*) ;
 struct hfi1_ibport* to_iport (int ,int ) ;

int hfi1_setup_wqe(struct rvt_qp *qp, struct rvt_swqe *wqe, bool *call_send)
{
 struct hfi1_ibport *ibp = to_iport(qp->ibqp.device, qp->port_num);
 struct rvt_ah *ah;
 struct hfi1_pportdata *ppd;
 struct hfi1_devdata *dd;

 switch (qp->ibqp.qp_type) {
 case 131:
  hfi1_setup_tid_rdma_wqe(qp, wqe);

 case 129:
  if (wqe->length > 0x80000000U)
   return -EINVAL;
  if (wqe->length > qp->pmtu)
   *call_send = 0;
  break;
 case 130:







  ppd = ppd_from_ibp(ibp);
  dd = dd_from_ppd(ppd);
  if (wqe->length > dd->vld[15].mtu)
   return -EINVAL;
  break;
 case 132:
 case 128:
  ah = rvt_get_swqe_ah(wqe);
  if (wqe->length > (1 << ah->log_pmtu))
   return -EINVAL;
  if (ibp->sl_to_sc[rdma_ah_get_sl(&ah->attr)] == 0xf)
   return -EINVAL;
 default:
  break;
 }





 if (wqe->length <= piothreshold)
  *call_send = 1;
 return 0;
}
