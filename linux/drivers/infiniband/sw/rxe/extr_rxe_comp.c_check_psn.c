
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_send_wqe {scalar_t__ last_psn; scalar_t__ state; int mask; } ;
struct TYPE_2__ {scalar_t__ psn; } ;
struct rxe_qp {TYPE_1__ comp; } ;
struct rxe_pkt_info {scalar_t__ psn; } ;
typedef scalar_t__ s32 ;
typedef enum comp_state { ____Placeholder_comp_state } comp_state ;


 int COMPST_CHECK_ACK ;
 int COMPST_COMP_ACK ;
 int COMPST_COMP_WQE ;
 int COMPST_DONE ;
 int COMPST_ERROR_RETRY ;
 int WR_ATOMIC_OR_READ_MASK ;
 scalar_t__ psn_compare (scalar_t__,scalar_t__) ;
 int reset_retry_counters (struct rxe_qp*) ;
 scalar_t__ wqe_state_pending ;

__attribute__((used)) static inline enum comp_state check_psn(struct rxe_qp *qp,
     struct rxe_pkt_info *pkt,
     struct rxe_send_wqe *wqe)
{
 s32 diff;




 diff = psn_compare(pkt->psn, wqe->last_psn);
 if (diff > 0) {
  if (wqe->state == wqe_state_pending) {
   if (wqe->mask & WR_ATOMIC_OR_READ_MASK)
    return COMPST_ERROR_RETRY;

   reset_retry_counters(qp);
   return COMPST_COMP_WQE;
  } else {
   return COMPST_DONE;
  }
 }


 diff = psn_compare(pkt->psn, qp->comp.psn);
 if (diff < 0) {



  if (pkt->psn == wqe->last_psn)
   return COMPST_COMP_ACK;
  else
   return COMPST_DONE;
 } else if ((diff > 0) && (wqe->mask & WR_ATOMIC_OR_READ_MASK)) {
  return COMPST_DONE;
 } else {
  return COMPST_CHECK_ACK;
 }
}
