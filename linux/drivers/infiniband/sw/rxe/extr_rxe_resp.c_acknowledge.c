
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ aeth_syndrome; } ;
struct rxe_qp {TYPE_1__ resp; } ;
struct rxe_pkt_info {int mask; int psn; } ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;


 scalar_t__ AETH_ACK_UNLIMITED ;
 scalar_t__ IB_QPT_RC ;
 int RESPST_CLEANUP ;
 int RXE_ATOMIC_MASK ;
 scalar_t__ bth_ack (struct rxe_pkt_info*) ;
 scalar_t__ qp_type (struct rxe_qp*) ;
 int send_ack (struct rxe_qp*,struct rxe_pkt_info*,scalar_t__,int ) ;
 int send_atomic_ack (struct rxe_qp*,struct rxe_pkt_info*,scalar_t__) ;

__attribute__((used)) static enum resp_states acknowledge(struct rxe_qp *qp,
        struct rxe_pkt_info *pkt)
{
 if (qp_type(qp) != IB_QPT_RC)
  return RESPST_CLEANUP;

 if (qp->resp.aeth_syndrome != AETH_ACK_UNLIMITED)
  send_ack(qp, pkt, qp->resp.aeth_syndrome, pkt->psn);
 else if (pkt->mask & RXE_ATOMIC_MASK)
  send_atomic_ack(qp, pkt, AETH_ACK_UNLIMITED);
 else if (bth_ack(pkt))
  send_ack(qp, pkt, AETH_ACK_UNLIMITED, pkt->psn);

 return RESPST_CLEANUP;
}
