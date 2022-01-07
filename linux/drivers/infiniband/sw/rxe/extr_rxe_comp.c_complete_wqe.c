
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rxe_send_wqe {scalar_t__ state; int last_psn; } ;
struct TYPE_3__ {int task; scalar_t__ wait_psn; } ;
struct TYPE_4__ {int psn; int opcode; } ;
struct rxe_qp {TYPE_1__ req; TYPE_2__ comp; } ;
struct rxe_pkt_info {int dummy; } ;
typedef enum comp_state { ____Placeholder_comp_state } comp_state ;


 int BTH_PSN_MASK ;
 int COMPST_GET_WQE ;
 int do_complete (struct rxe_qp*,struct rxe_send_wqe*) ;
 scalar_t__ psn_compare (int,int) ;
 int rxe_run_task (int *,int) ;
 scalar_t__ wqe_state_pending ;

__attribute__((used)) static inline enum comp_state complete_wqe(struct rxe_qp *qp,
        struct rxe_pkt_info *pkt,
        struct rxe_send_wqe *wqe)
{
 if (pkt && wqe->state == wqe_state_pending) {
  if (psn_compare(wqe->last_psn, qp->comp.psn) >= 0) {
   qp->comp.psn = (wqe->last_psn + 1) & BTH_PSN_MASK;
   qp->comp.opcode = -1;
  }

  if (qp->req.wait_psn) {
   qp->req.wait_psn = 0;
   rxe_run_task(&qp->req.task, 1);
  }
 }

 do_complete(qp, wqe);

 return COMPST_GET_WQE;
}
