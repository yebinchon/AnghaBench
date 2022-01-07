
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int task; } ;
struct rxe_qp {TYPE_1__ comp; int resp_pkts; } ;
struct TYPE_4__ {int rxe; } ;


 int RXE_CNT_COMPLETER_SCHED ;
 TYPE_2__* SKB_TO_PKT (struct sk_buff*) ;
 int rxe_counter_inc (int ,int ) ;
 int rxe_run_task (int *,int) ;
 int skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void rxe_comp_queue_pkt(struct rxe_qp *qp, struct sk_buff *skb)
{
 int must_sched;

 skb_queue_tail(&qp->resp_pkts, skb);

 must_sched = skb_queue_len(&qp->resp_pkts) > 1;
 if (must_sched != 0)
  rxe_counter_inc(SKB_TO_PKT(skb)->rxe, RXE_CNT_COMPLETER_SCHED);

 rxe_run_task(&qp->comp.task, must_sched);
}
