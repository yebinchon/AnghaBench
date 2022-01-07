
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {size_t opcode; } ;
struct rvt_swqe {TYPE_2__ wr; } ;
struct TYPE_3__ {int device; } ;
struct rvt_qp {size_t state; scalar_t__ s_last; scalar_t__ s_acked; scalar_t__ s_cur; scalar_t__ s_tail; scalar_t__ s_draining; TYPE_1__ ibqp; } ;
struct rvt_dev_info {int * wc_opcode; } ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;


 size_t IB_QPS_SQD ;
 int RVT_PROCESS_OR_FLUSH_SEND ;
 int* ib_rvt_state_ops ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 scalar_t__ rvt_qp_complete_swqe (struct rvt_qp*,struct rvt_swqe*,int ,int) ;
 int trace_rvt_qp_send_completion (struct rvt_qp*,struct rvt_swqe*,scalar_t__) ;

void rvt_send_complete(struct rvt_qp *qp, struct rvt_swqe *wqe,
         enum ib_wc_status status)
{
 u32 old_last, last;
 struct rvt_dev_info *rdi;

 if (!(ib_rvt_state_ops[qp->state] & RVT_PROCESS_OR_FLUSH_SEND))
  return;
 rdi = ib_to_rvt(qp->ibqp.device);

 old_last = qp->s_last;
 trace_rvt_qp_send_completion(qp, wqe, old_last);
 last = rvt_qp_complete_swqe(qp, wqe, rdi->wc_opcode[wqe->wr.opcode],
        status);
 if (qp->s_acked == old_last)
  qp->s_acked = last;
 if (qp->s_cur == old_last)
  qp->s_cur = last;
 if (qp->s_tail == old_last)
  qp->s_tail = last;
 if (qp->state == IB_QPS_SQD && last == qp->s_cur)
  qp->s_draining = 0;
}
