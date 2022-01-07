
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {struct rxe_qp* sk_user_data; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_2__ {int task; } ;
struct rxe_qp {TYPE_1__ req; scalar_t__ need_req_skb; int skb_out; } ;


 int RXE_INFLIGHT_SKBS_PER_QP_LOW ;
 int atomic_dec_return (int *) ;
 int rxe_drop_ref (struct rxe_qp*) ;
 int rxe_run_task (int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rxe_skb_tx_dtor(struct sk_buff *skb)
{
 struct sock *sk = skb->sk;
 struct rxe_qp *qp = sk->sk_user_data;
 int skb_out = atomic_dec_return(&qp->skb_out);

 if (unlikely(qp->need_req_skb &&
       skb_out < RXE_INFLIGHT_SKBS_PER_QP_LOW))
  rxe_run_task(&qp->req.task, 1);

 rxe_drop_ref(qp);
}
