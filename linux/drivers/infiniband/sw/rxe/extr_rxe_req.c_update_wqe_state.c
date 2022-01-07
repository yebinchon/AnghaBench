
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_send_wqe {int state; } ;
struct rxe_qp {int dummy; } ;
struct rxe_pkt_info {int mask; } ;


 scalar_t__ IB_QPT_RC ;
 int RXE_END_MASK ;
 scalar_t__ qp_type (struct rxe_qp*) ;
 int wqe_state_pending ;
 int wqe_state_processing ;

__attribute__((used)) static void update_wqe_state(struct rxe_qp *qp,
  struct rxe_send_wqe *wqe,
  struct rxe_pkt_info *pkt)
{
 if (pkt->mask & RXE_END_MASK) {
  if (qp_type(qp) == IB_QPT_RC)
   wqe->state = wqe_state_pending;
 } else {
  wqe->state = wqe_state_processing;
 }
}
