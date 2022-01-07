
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvt_swqe {int length; } ;
struct TYPE_2__ {int qp_type; } ;
struct rvt_qp {int pmtu; TYPE_1__ ibqp; } ;
struct rvt_ah {int log_pmtu; } ;


 int EINVAL ;





 struct rvt_ah* rvt_get_swqe_ah (struct rvt_swqe*) ;

int qib_check_send_wqe(struct rvt_qp *qp,
         struct rvt_swqe *wqe, bool *call_send)
{
 struct rvt_ah *ah;

 switch (qp->ibqp.qp_type) {
 case 131:
 case 129:
  if (wqe->length > 0x80000000U)
   return -EINVAL;
  if (wqe->length > qp->pmtu)
   *call_send = 0;
  break;
 case 130:
 case 132:
 case 128:
  ah = rvt_get_swqe_ah(wqe);
  if (wqe->length > (1 << ah->log_pmtu))
   return -EINVAL;

  *call_send = 1;
  break;
 default:
  break;
 }
 return 0;
}
