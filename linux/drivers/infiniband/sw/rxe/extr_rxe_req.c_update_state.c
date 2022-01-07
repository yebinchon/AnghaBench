
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rxe_send_wqe {int dummy; } ;
struct TYPE_4__ {int wqe_index; int opcode; } ;
struct TYPE_3__ {int queue; } ;
struct rxe_qp {scalar_t__ qp_timeout_jiffies; int retrans_timer; scalar_t__ need_req_skb; TYPE_2__ req; TYPE_1__ sq; } ;
struct rxe_pkt_info {int mask; int opcode; } ;


 int RXE_END_MASK ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int next_index (int ,int ) ;
 int timer_pending (int *) ;

__attribute__((used)) static void update_state(struct rxe_qp *qp, struct rxe_send_wqe *wqe,
    struct rxe_pkt_info *pkt, int payload)
{
 qp->req.opcode = pkt->opcode;

 if (pkt->mask & RXE_END_MASK)
  qp->req.wqe_index = next_index(qp->sq.queue, qp->req.wqe_index);

 qp->need_req_skb = 0;

 if (qp->qp_timeout_jiffies && !timer_pending(&qp->retrans_timer))
  mod_timer(&qp->retrans_timer,
     jiffies + qp->qp_timeout_jiffies);
}
