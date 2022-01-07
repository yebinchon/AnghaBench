
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rxe_send_wqe {int last_psn; int first_psn; int state; } ;
struct TYPE_2__ {int psn; } ;
struct rxe_qp {TYPE_1__ req; } ;



__attribute__((used)) static void rollback_state(struct rxe_send_wqe *wqe,
      struct rxe_qp *qp,
      struct rxe_send_wqe *rollback_wqe,
      u32 rollback_psn)
{
 wqe->state = rollback_wqe->state;
 wqe->first_psn = rollback_wqe->first_psn;
 wqe->last_psn = rollback_wqe->last_psn;
 qp->req.psn = rollback_psn;
}
